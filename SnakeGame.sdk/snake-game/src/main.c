#include "xparameters.h"
#include "xgpio.h"
#include "sleep.h"
#include "stdlib.h"
#include "PmodJSTK2.h"

#define SEG_DEVICE_ID     XPAR_AXI_GPIO_SEG_DEVICE_ID
#define APPLE_DEVICE_ID   XPAR_AXI_GPIO_APPLE_DEVICE_ID
#define GPIO_CHAN         1

#define TILE_SIZE         16
#define GRID_W            15
#define GRID_H            17
#define SNAKE_SPEED_US    250000

#define JS_CENTER         128
#define JS_DEADZONE       32

#define MAX_SNAKE_LENGTH  100

static XGpio gpioSeg, gpioApple;
static PmodJSTK2 joystick;

void Initialize() {
    int status;
    JSTK2_begin(&joystick,
                XPAR_PMODJSTK2_0_AXI_LITE_SPI_BASEADDR,
                XPAR_PMODJSTK2_0_AXI_LITE_GPIO_BASEADDR);
    JSTK2_setInversion(&joystick, 0, 1);

    status = XGpio_Initialize(&gpioSeg, SEG_DEVICE_ID);
    if (status != XST_SUCCESS) while (1);
    status = XGpio_Initialize(&gpioApple, APPLE_DEVICE_ID);
    if (status != XST_SUCCESS) while (1);

    XGpio_SetDataDirection(&gpioSeg, GPIO_CHAN, 0x0);
    XGpio_SetDataDirection(&gpioApple, GPIO_CHAN, 0x0);
}

void Run() {
    int tile_x = GRID_W / 2, tile_y = GRID_H / 2;
    int dx = +1, dy = 0;

    int apple_x = rand() % GRID_W;
    int apple_y = rand() % GRID_H;

    int snake_x[MAX_SNAKE_LENGTH];
    int snake_y[MAX_SNAKE_LENGTH];
    int snake_len = 1;
    int segment_index = 0;

    snake_x[0] = tile_x;
    snake_y[0] = tile_y;

    while (1) {
        JSTK2_Position pos = JSTK2_getPosition(&joystick);
        int jx = (int)pos.XData - JS_CENTER;
        int jy = (int)pos.YData - JS_CENTER;

        if (abs(jx) > abs(jy)) {
            if (jx >  JS_DEADZONE && dx == 0) { dx = +1; dy =  0; }
            if (jx < -JS_DEADZONE && dx == 0) { dx = -1; dy =  0; }
        } else {
            if (jy >  JS_DEADZONE && dy == 0) { dx =  0; dy = -1; }
            if (jy < -JS_DEADZONE && dy == 0) { dx =  0; dy = +1; }
        }

        // Move body
        for (int i = snake_len - 1; i > 0; i--) {
            snake_x[i] = snake_x[i - 1];
            snake_y[i] = snake_y[i - 1];
        }

        // Move head
        tile_x += dx;
        tile_y += dy;

        if (tile_x < 0 || tile_x >= GRID_W || tile_y < 0 || tile_y >= GRID_H) {
            break;  // Exit game loop
        }

        snake_x[0] = tile_x;
        snake_y[0] = tile_y;

        // Apple eaten?
        if (tile_x == apple_x && tile_y == apple_y && snake_len < MAX_SNAKE_LENGTH) {
            snake_len++;
            apple_x = rand() % GRID_W;
            apple_y = rand() % GRID_H;
        }

        // Cycle display one segment at a time
        segment_index = (segment_index + 1) % snake_len;
        int sx = snake_x[segment_index];
        int sy = snake_y[segment_index];

        u32 seg_val   = (((sy * TILE_SIZE) & 0x3FF) << 10) | ((sx * TILE_SIZE) & 0x3FF);
        u32 apple_val = (((apple_y * TILE_SIZE) & 0x3FF) << 10) | ((apple_x * TILE_SIZE) & 0x3FF);

        XGpio_DiscreteWrite(&gpioSeg,   GPIO_CHAN, seg_val);
        XGpio_DiscreteWrite(&gpioApple, GPIO_CHAN, apple_val);

        usleep(SNAKE_SPEED_US / snake_len);
    }

    // Game over: turn off display
    XGpio_DiscreteWrite(&gpioSeg,   GPIO_CHAN, 0);
    XGpio_DiscreteWrite(&gpioApple, GPIO_CHAN, 0);
}

int main(void) {
    Initialize();
    Run();
    return 0;
}

#include "xparameters.h"
#include "xgpio.h"
#include "sleep.h"
#include "stdlib.h"
#include "PmodJSTK2.h"

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
static PmodJSTK2 joystick;

// Obstacle positions
int car1_x, car1_y;    // First car
int car2_x, car2_y;    // Second car
int log1_x, log1_y;    // First log
int log2_x, log2_y;    // Second log

void Initialize() {
    int status;
    
    // Initialize joystick
    JSTK2_begin(&joystick,
                XPAR_PMODJSTK2_0_AXI_LITE_SPI_BASEADDR,
                XPAR_PMODJSTK2_0_AXI_LITE_GPIO_BASEADDR);
    JSTK2_setInversion(&joystick, 0, 1);
    
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
    
    while (lives > 0) {
        // Read joystick for frog movement
        JSTK2_Position pos = JSTK2_getPosition(&joystick);
        int jx = (int)pos.XData - JS_CENTER;
        int jy = (int)pos.YData - JS_CENTER;
        
        if (abs(jx) > abs(jy)) {
            if (jx >  JS_DEADZONE && frog_x < GRID_W - 1) { frog_x++; }
            if (jx < -JS_DEADZONE && frog_x > 0)          { frog_x--; }
        } else {
            if (jy >  JS_DEADZONE && frog_y < GRID_H - 1) { frog_y++; }
            if (jy < -JS_DEADZONE && frog_y > 0)          { frog_y--; }
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
