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

// #include "xparameters.h"
// #include "xgpio.h"
// #include "sleep.h"
// #include "stdlib.h"
// #include "PmodJSTK2.h"

// #define SEG_DEVICE_ID     XPAR_AXI_GPIO_SEG_DEVICE_ID
// #define APPLE_DEVICE_ID   XPAR_AXI_GPIO_APPLE_DEVICE_ID
// #define GPIO_CHAN         1
// #define TILE_SIZE         16
// #define GRID_W            15
// #define GRID_H            17
// #define SNAKE_SPEED_US    250000
// #define JS_CENTER         128
// #define JS_DEADZONE       32
// #define MAX_SNAKE_LENGTH  100
// #define SNAKE_BITS        0x0F  // Snake segments will use bits 0-3
// #define APPLE_BIT         0x10  // Apple will use bit 4

// static XGpio gpioSeg, gpioApple;
// static PmodJSTK2 joystick;

// void Initialize() {
//     int status;
//     JSTK2_begin(&joystick,
//                 XPAR_PMODJSTK2_0_AXI_LITE_SPI_BASEADDR,
//                 XPAR_PMODJSTK2_0_AXI_LITE_GPIO_BASEADDR);
//     JSTK2_setInversion(&joystick, 0, 1);
    
//     status = XGpio_Initialize(&gpioSeg, SEG_DEVICE_ID);
//     if (status != XST_SUCCESS) while (1);
    
//     status = XGpio_Initialize(&gpioApple, APPLE_DEVICE_ID);
//     if (status != XST_SUCCESS) while (1);
    
//     XGpio_SetDataDirection(&gpioSeg, GPIO_CHAN, 0x0);
//     XGpio_SetDataDirection(&gpioApple, GPIO_CHAN, 0x0);
// }

// // With VGA, we need a function to update all display elements
// void UpdateDisplay(int snake_x[], int snake_y[], int snake_len, int apple_x, int apple_y) {
//     // Update apple position
//     u32 apple_val = (((apple_y * TILE_SIZE) & 0x3FF) << 10) | ((apple_x * TILE_SIZE) & 0x3FF);
//     XGpio_DiscreteWrite(&gpioApple, GPIO_CHAN, apple_val);
    
//     // For VGA with limited sprite support, we'll prioritize displaying the head and tail
//     // and a few segments in between to create the illusion of a continuous snake
    
//     // Always show the head
//     int head_index = 0;
//     u32 head_val = (((snake_y[head_index] * TILE_SIZE) & 0x3FF) << 10) | 
//                     ((snake_x[head_index] * TILE_SIZE) & 0x3FF);
//     XGpio_DiscreteWrite(&gpioSeg, GPIO_CHAN, head_val);
    
//     // Small delay to ensure head is visible
//     usleep(5000);
    
//     // If snake is long enough, show more segments
//     if (snake_len > 3) {
//         // Show middle segments (spaced out)
//         for (int i = 1; i < snake_len - 1; i += 2) {
//             u32 seg_val = (((snake_y[i] * TILE_SIZE) & 0x3FF) << 10) | 
//                            ((snake_x[i] * TILE_SIZE) & 0x3FF);
//             XGpio_DiscreteWrite(&gpioSeg, GPIO_CHAN, seg_val);
//             usleep(5000);
//         }
//     }
    
//     // Always show the tail if snake length > 1
//     if (snake_len > 1) {
//         int tail_index = snake_len - 1;
//         u32 tail_val = (((snake_y[tail_index] * TILE_SIZE) & 0x3FF) << 10) | 
//                          ((snake_x[tail_index] * TILE_SIZE) & 0x3FF);
//         XGpio_DiscreteWrite(&gpioSeg, GPIO_CHAN, tail_val);
//         usleep(5000);
//     }
// }

// void Run() {
//     int tile_x = GRID_W / 2, tile_y = GRID_H / 2;
//     int dx = +1, dy = 0;
//     int apple_x = rand() % GRID_W;
//     int apple_y = rand() % GRID_H;
//     int snake_x[MAX_SNAKE_LENGTH];
//     int snake_y[MAX_SNAKE_LENGTH];
//     int snake_len = 1;
    
//     snake_x[0] = tile_x;
//     snake_y[0] = tile_y;
    
//     while (1) {
//         // Read joystick
//         JSTK2_Position pos = JSTK2_getPosition(&joystick);
//         int jx = (int)pos.XData - JS_CENTER;
//         int jy = (int)pos.YData - JS_CENTER;
        
//         if (abs(jx) > abs(jy)) {
//             if (jx >  JS_DEADZONE && dx == 0) { dx = +1; dy =  0; }
//             if (jx < -JS_DEADZONE && dx == 0) { dx = -1; dy =  0; }
//         } else {
//             if (jy >  JS_DEADZONE && dy == 0) { dx =  0; dy = -1; }
//             if (jy < -JS_DEADZONE && dy == 0) { dx =  0; dy = +1; }
//         }
        
//         // Move body
//         for (int i = snake_len - 1; i > 0; i--) {
//             snake_x[i] = snake_x[i - 1];
//             snake_y[i] = snake_y[i - 1];
//         }
        
//         // Move head
//         tile_x += dx;
//         tile_y += dy;
//         if (tile_x < 0 || tile_x >= GRID_W || tile_y < 0 || tile_y >= GRID_H) {
//             break;  // Exit game loop
//         }
        
//         snake_x[0] = tile_x;
//         snake_y[0] = tile_y;
        
//         // Apple eaten?
//         if (tile_x == apple_x && tile_y == apple_y && snake_len < MAX_SNAKE_LENGTH) {
//             snake_len++;
//             apple_x = rand() % GRID_W;
//             apple_y = rand() % GRID_H;
//         }
        
//         // Update the display with all elements
//         UpdateDisplay(snake_x, snake_y, snake_len, apple_x, apple_y);
        
//         // Delay for game speed
//         usleep(SNAKE_SPEED_US - (10000 * (snake_len > 3 ? 3 : snake_len))); // Adjust for display time
//     }
    
//     // Game over: turn off display
//     XGpio_DiscreteWrite(&gpioSeg, GPIO_CHAN, 0);
//     XGpio_DiscreteWrite(&gpioApple, GPIO_CHAN, 0);
// }

// int main(void) {
//     Initialize();
//     Run();
//     return 0;
// }
