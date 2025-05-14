#include "xparameters.h"
#include "xgpio.h"
#include "sleep.h"
 
#include "PmodKYPD.h"
#include "xil_cache.h"
#include "xil_printf.h"
 
#include <stdlib.h>
 
// GPIO Device IDs
#define FROG_GPIO_ID      XPAR_AXI_GPIO_FROG_DEVICE_ID
#define CAR1_GPIO_ID      XPAR_AXI_GPIO_CAR1_DEVICE_ID
#define CAR2_GPIO_ID      XPAR_AXI_GPIO_CAR2_DEVICE_ID
#define LOG1_GPIO_ID      XPAR_AXI_GPIO_LOG1_DEVICE_ID
#define LOG2_GPIO_ID      XPAR_AXI_GPIO_LOG2_DEVICE_ID
#define GOAL_GPIO_ID      XPAR_AXI_GPIO_GOAL_DEVICE_ID
 
#define GPIO_CHAN         1
#define TILE_SIZE         16
#define GRID_W            15
#define GRID_H            17
#define GAME_SPEED_US     250000
#define JS_CENTER         128
#define JS_DEADZONE       32
 
// Sprite indices in sprite.mem
#define SPRITE_FROG       1
#define SPRITE_CAR        2
#define SPRITE_LOG        3
#define SPRITE_GOAL       4
 
// Game constants
#define NUM_ROWS          4           // 4 obstacle rows
#define START_X           (GRID_W/2)  // Starting X position
#define START_Y           (GRID_H-2)  // Starting Y position
#define GOAL_ROW_Y        1           // Goal row Y position
 
// Create a separate GPIO for each game element
static XGpio gpioFrog, gpioCar1, gpioCar2, gpioLog1, gpioLog2, gpioGoal;
 
// Obstacle positions
int car1_x, car1_y;    // First car
int car2_x, car2_y;    // Second car
int log1_x, log1_y;    // First log
int log2_x, log2_y;    // Second log
 
PmodKYPD keypad;
#define PMOD_BASEADDR XPAR_PMODKYPD_0_AXI_LITE_GPIO_BASEADDR
 
// 12 13 14 15
// 8  9  10 11
// 4  5  6  7
// 0  1  2  3
#define DEFAULT_KEYTABLE "0FED789C456B123A"
 
void Initialize() {
    int status;
 
    KYPD_begin(&keypad, PMOD_BASEADDR);
    KYPD_loadKeyTable(&keypad, (u8 *)DEFAULT_KEYTABLE);
 
    // Initialize all GPIOs
    status = XGpio_Initialize(&gpioFrog, FROG_GPIO_ID);
    if (status != XST_SUCCESS) while (1);
 
    status = XGpio_Initialize(&gpioCar1, CAR1_GPIO_ID);
    if (status != XST_SUCCESS) while (1);
 
    status = XGpio_Initialize(&gpioCar2, CAR2_GPIO_ID);
    if (status != XST_SUCCESS) while (1);
 
    status = XGpio_Initialize(&gpioLog1, LOG1_GPIO_ID);
    if (status != XST_SUCCESS) while (1);
 
    status = XGpio_Initialize(&gpioLog2, LOG2_GPIO_ID);
    if (status != XST_SUCCESS) while (1);
 
    status = XGpio_Initialize(&gpioGoal, GOAL_GPIO_ID);
    if (status != XST_SUCCESS) while (1);
 
    // Set all GPIOs as outputs
    XGpio_SetDataDirection(&gpioFrog, GPIO_CHAN, 0x0);
    XGpio_SetDataDirection(&gpioCar1, GPIO_CHAN, 0x0);
    XGpio_SetDataDirection(&gpioCar2, GPIO_CHAN, 0x0);
    XGpio_SetDataDirection(&gpioLog1, GPIO_CHAN, 0x0);
    XGpio_SetDataDirection(&gpioLog2, GPIO_CHAN, 0x0);
    XGpio_SetDataDirection(&gpioGoal, GPIO_CHAN, 0x0);
 
    // Initialize obstacle positions
    car1_x = rand() % GRID_W;
    car1_y = 5;  // First car row
 
    car2_x = rand() % GRID_W;
    car2_y = 8;  // Second car row
 
    log1_x = rand() % GRID_W;
    log1_y = 11; // First log row
 
    log2_x = rand() % GRID_W;
    log2_y = 14; // Second log row
}
 
// Check collision between frog and obstacles
int CheckCollision(int frog_x, int frog_y) {
    // Check for car collisions
    if (frog_y == car1_y && abs(frog_x - car1_x) <= 1) {
        return 1; // Collision with car 1
    }
 
    if (frog_y == car2_y && abs(frog_x - car2_x) <= 1) {
        return 1; // Collision with car 2
    }
 
    // Check for drowning (in river but not on log)
    if (frog_y == log1_y) {
        if (abs(frog_x - log1_x) <= 1) {
            return 0; // Safe on log 1
        } else {
            return 2; // Drowning in river 1
        }
    }
 
    if (frog_y == log2_y) {
        if (abs(frog_x - log2_x) <= 1) {
            return 0; // Safe on log 2
        } else {
            return 2; // Drowning in river 2
        }
    }
 
    return 0; // No collision
}
 
// Check if frog reached goal
int CheckGoal(int frog_x, int frog_y) {
    return (frog_y == GOAL_ROW_Y);
}
 
// Update display for all game elements
void UpdateDisplay(int frog_x, int frog_y) {
    // Update frog position
    u32 frog_val = (((frog_y * TILE_SIZE) & 0x3FF) << 10) | ((frog_x * TILE_SIZE) & 0x3FF);
    XGpio_DiscreteWrite(&gpioFrog, GPIO_CHAN, frog_val);
 
    // Update car positions
    u32 car1_val = (((car1_y * TILE_SIZE) & 0x3FF) << 10) | ((car1_x * TILE_SIZE) & 0x3FF);
    XGpio_DiscreteWrite(&gpioCar1, GPIO_CHAN, car1_val);
 
    u32 car2_val = (((car2_y * TILE_SIZE) & 0x3FF) << 10) | ((car2_x * TILE_SIZE) & 0x3FF);
    XGpio_DiscreteWrite(&gpioCar2, GPIO_CHAN, car2_val);
 
    // Update log positions
    u32 log1_val = (((log1_y * TILE_SIZE) & 0x3FF) << 10) | ((log1_x * TILE_SIZE) & 0x3FF);
    XGpio_DiscreteWrite(&gpioLog1, GPIO_CHAN, log1_val);
 
    u32 log2_val = (((log2_y * TILE_SIZE) & 0x3FF) << 10) | ((log2_x * TILE_SIZE) & 0x3FF);
    XGpio_DiscreteWrite(&gpioLog2, GPIO_CHAN, log2_val);
 
    // Update goal
    u32 goal_val = (((GOAL_ROW_Y * TILE_SIZE) & 0x3FF) << 10) | (((GRID_W/2) * TILE_SIZE) & 0x3FF);
    XGpio_DiscreteWrite(&gpioGoal, GPIO_CHAN, goal_val);
}
 
void Run() {
    int frog_x = START_X;
    int frog_y = START_Y;
    int lives = 3;
    int level = 1;
    u16 keystate;
    XStatus status;
    u8 key, last_key = 'x';  // Initialize last_key to an invalid key
 
    while (lives > 0) {
        // Capture state of each key
        keystate = KYPD_getKeyStates(&keypad);
 
        // Determine which single key is pressed, if any
        status = KYPD_getKeyPressed(&keypad, keystate, &key);
 
        // If a valid key is pressed, update frog's position
        if (status == KYPD_SINGLE_KEY && key != last_key) {
            last_key = key;
 
            // Handle movement based on key press
            if (key == '2' && frog_y > 0) {  // Up
                frog_y--;
            }
            else if (key == '4' && frog_x > 0) {  // Left
                frog_x--;
            }
            else if (key == '5' && frog_y < GRID_H - 1) {  // Down
                frog_y++;
            }
            else if (key == '6' && frog_x < GRID_W - 1) {  // Right
                frog_x++;
            }
        }
 
        // Move obstacles
        // Car 1 moves right
        car1_x = (car1_x + 1) % GRID_W;
 
        // Car 2 moves left
        car2_x = (car2_x - 1 + GRID_W) % GRID_W;
 
        // Log 1 moves left
        log1_x = (log1_x - 1 + GRID_W) % GRID_W;
 
        // Log 2 moves right
        log2_x = (log2_x + 1) % GRID_W;
 
        // Move frog with logs when on them
        if (frog_y == log1_y && abs(frog_x - log1_x) <= 1) {
            frog_x = (frog_x - 1 + GRID_W) % GRID_W;
        }
 
        if (frog_y == log2_y && abs(frog_x - log2_x) <= 1) {
            frog_x = (frog_x + 1) % GRID_W;
        }
 
        // Check for collisions
        int collision = CheckCollision(frog_x, frog_y);
        if (collision > 0) {
            lives--;
            frog_x = START_X;
            frog_y = START_Y;
 
            // Flash frog to indicate death
            for (int i = 0; i < 3; i++) {
                UpdateDisplay(frog_x, frog_y);
                usleep(100000);
                XGpio_DiscreteWrite(&gpioFrog, GPIO_CHAN, 0);
                usleep(100000);
            }
        }
 
        // Check if goal reached
        if (CheckGoal(frog_x, frog_y)) {
            level++;
            frog_x = START_X;
            frog_y = START_Y;
 
            // Flash goal to indicate win
            for (int i = 0; i < 3; i++) {
                UpdateDisplay(frog_x, frog_y);
                usleep(100000);
                XGpio_DiscreteWrite(&gpioGoal, GPIO_CHAN, 0);
                usleep(100000);
            }
        }
 
        // Update all displays
        UpdateDisplay(frog_x, frog_y);
 
        // Game speed delay
        usleep(GAME_SPEED_US);
    }
 
    // Game over - turn off all displays
    XGpio_DiscreteWrite(&gpioFrog, GPIO_CHAN, 0);
    XGpio_DiscreteWrite(&gpioCar1, GPIO_CHAN, 0);
    XGpio_DiscreteWrite(&gpioCar2, GPIO_CHAN, 0);
    XGpio_DiscreteWrite(&gpioLog1, GPIO_CHAN, 0);
    XGpio_DiscreteWrite(&gpioLog2, GPIO_CHAN, 0);
    XGpio_DiscreteWrite(&gpioGoal, GPIO_CHAN, 0);
}
 
 
int main(void) {
    Initialize();
    Run();
    return 0;
}
