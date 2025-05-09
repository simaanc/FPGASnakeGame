// #include "xparameters.h"
// #include "xgpio.h"
// #include "sleep.h"   // usleep()
// #include "stdlib.h"
// #include "PmodJSTK2.h"

// // Pull in the device IDs auto-generated in xparameters.h
// #define SEG_DEVICE_ID   XPAR_AXI_GPIO_SEG_DEVICE_ID    // should be 2
// #define APPLE_DEVICE_ID XPAR_AXI_GPIO_APPLE_DEVICE_ID  // should be 1

// #define GPIO_CHAN       1    // single‐channel AXI-GPIO

// static XGpio gpioSeg, gpioApple;

// PmodJSTK2 joystick;

// void Initialize();
// void Run();

// int main(void)
// {
// 	Initialize();
// 	Run();
// }

// void Initialize() {
// 	JSTK2_begin(
// 	      &joystick,
// 	      XPAR_PMODJSTK2_0_AXI_LITE_SPI_BASEADDR,
// 	      XPAR_PMODJSTK2_0_AXI_LITE_GPIO_BASEADDR
// 	   );

// 	   // Set inversion register to invert only the Y axis
// 	   JSTK2_setInversion(&joystick, 0, 1);
// }

// void Run() {
//     int status;
//     JSTK2_Position position;
//     JSTK2_DataPacket rawdata;

//     // 1) Initialize the two GPIO instances
//     status = XGpio_Initialize(&gpioSeg,   SEG_DEVICE_ID);
//     if (status != XST_SUCCESS) return XST_FAILURE;

//     status = XGpio_Initialize(&gpioApple, APPLE_DEVICE_ID);
//     if (status != XST_SUCCESS) return XST_FAILURE;

//     // 2) Make both channels outputs (MicroBlaze → fabric)
//     XGpio_SetDataDirection(&gpioSeg,   GPIO_CHAN, 0x0);
//     XGpio_SetDataDirection(&gpioApple, GPIO_CHAN, 0x0);

//     // 3) Bouncing‐sprite demo
//     int x = 200, y = 200;
//     int dx = 2, dy = 1;

//     int x1 = 100, y1 = 100;

//     int value = rand() % (30 - 5 + 1) + 5;

//     while (1) {
//         // Get joystick x and y coordinate values
//         position = JSTK2_getPosition(&joystick);
//         // Get button states
//         rawdata = JSTK2_getDataPacket(&joystick);

//         // pack Y in bits [19:10], X in bits [9:0]
//         u32 seg_val   = ((y-position.YData & 0x3FF) << 10) | (x+position.XData & 0x3FF);
//         u32 apple_val = (((y1+value) & 0x3FF) << 10) | ((x+value) & 0x3FF);

//         XGpio_DiscreteWrite(&gpioSeg,   GPIO_CHAN, seg_val);
//         XGpio_DiscreteWrite(&gpioApple, GPIO_CHAN, apple_val);

//         usleep(16000);  // ~60 Hz
//     }

//     return 0;
// }

#include "xparameters.h"
#include "xgpio.h"
#include "sleep.h"   // usleep()
#include "stdlib.h"
#include "PmodJSTK2.h"

// Pull in the device IDs auto-generated in xparameters.h
#define SEG_DEVICE_ID   XPAR_AXI_GPIO_SEG_DEVICE_ID    // should be 2
#define APPLE_DEVICE_ID XPAR_AXI_GPIO_APPLE_DEVICE_ID  // should be 1

#define GPIO_CHAN       1    // single‐channel AXI-GPIO


// Game constants
#define SCREEN_WIDTH    640 
#define SCREEN_HEIGHT   480 
#define SCREEN_MARGIN_X 30   // Margin from screen edges (X)
#define SCREEN_MARGIN_Y 30   // Margin from screen edges (Y)
#define SNAKE_SIZE      16   // Size of snake segments
#define APPLE_SIZE      16   // Size of apple
#define MAX_SNAKE_LENGTH 100 // Maximum length of snake


static XGpio gpioSeg, gpioApple;

PmodJSTK2 joystick;

// Game variables
int snake_segments_x[MAX_SNAKE_LENGTH]; // X positions of all snake segments
int snake_segments_y[MAX_SNAKE_LENGTH]; // Y positions of all snake segments
int snake_length = 1; // Initial length of the snake
int apple_x, apple_y; // Position of the apple
int score = 0; // Player's score
int game_over = 0; // Game over flag


void Initialize();
void Run();
void SpawnApple();
int IsSnakeOverlap(int x, int y);
int CheckCollision(int x1, int y1, int size1, int x2, int y2, int size2);

int main(void)
{
	Initialize();
	Run();
}

void Initialize() {
	JSTK2_begin(
	      &joystick,
	      XPAR_PMODJSTK2_0_AXI_LITE_SPI_BASEADDR,
	      XPAR_PMODJSTK2_0_AXI_LITE_GPIO_BASEADDR
	   );

	   // Set inversion register to invert only the Y axis
	   JSTK2_setInversion(&joystick, 0, 1);
}

void Run() {
    int status;
    JSTK2_Position position;
    JSTK2_DataPacket rawdata;

    int prev_x, prev_y;
    int prev2_x, prev2_y;
    int i;

    // 1) Initialize the two GPIO instances
    status = XGpio_Initialize(&gpioSeg,   SEG_DEVICE_ID);
    if (status != XST_SUCCESS) return XST_FAILURE;

    status = XGpio_Initialize(&gpioApple, APPLE_DEVICE_ID);
    if (status != XST_SUCCESS) return XST_FAILURE;

    // 2) Make both channels outputs (MicroBlaze → fabric)
    XGpio_SetDataDirection(&gpioSeg,   GPIO_CHAN, 0x0);
    XGpio_SetDataDirection(&gpioApple, GPIO_CHAN, 0x0);

    while (!game_over) {
        // Get joystick x and y coordinate values and button states
        position = JSTK2_getPosition(&joystick);
        rawdata = JSTK2_getDataPacket(&joystick);

        // Store previous head position
        prev_x = snake_segments_x[0];
        prev_y = snake_segments_y[0];

        // Update snake head position based on joystick
        snake_segments_x[0] += position.XData;  // what is the center value of the joystick? 
        snake_segments_y[0] -= position.YData;

        // Update body segments (follow the leader)
        for (i = 1; i < snake_length; i++) {
            // Store current position before updating
            prev2_x = snake_segments_x[i];
            prev2_y = snake_segments_y[i];
            
            // Move this segment to previous segment's position
            snake_segments_x[i] = prev_x;
            snake_segments_y[i] = prev_y;
            
            // Update previous for next iteration
            prev_x = prev2_x;
            prev_y = prev2_y;
        }

        // Check for collision with walls (game over condition)
        if (snake_segments_x[0] < SCREEN_MARGIN_X || 
            snake_segments_x[0] > SCREEN_WIDTH - SCREEN_MARGIN_X - SNAKE_SIZE ||
            snake_segments_y[0] < SCREEN_MARGIN_Y || 
            snake_segments_y[0] > SCREEN_HEIGHT - SCREEN_MARGIN_Y - SNAKE_SIZE) {
            
            game_over = 1; // Game over when snake hits the wall
            break;
        }
        else {
            // Check for collision with apple
            if (CheckCollision(snake_segments_x[0], snake_segments_y[0], SNAKE_SIZE, 
                            apple_x, apple_y, APPLE_SIZE)) {
                // Snake ate the apple
                score++;
                
                // Grow the snake (add new segment at the end)
                if (snake_length < MAX_SNAKE_LENGTH) {
                    // add new segment at the same position as last segment
                    snake_segments_x[snake_length] = snake_segments_x[snake_length-1];
                    snake_segments_y[snake_length] = snake_segments_y[snake_length-1];
                    snake_length++;
                }
                
                // Spawn a new apple
                SpawnApple();
            }

            // Check for collision with self (game over condition)
            for (i = 1; i < snake_length; i++) {
                if (CheckCollision(snake_segments_x[0], snake_segments_y[0], SNAKE_SIZE, 
                                snake_segments_x[i], snake_segments_y[i], SNAKE_SIZE)) {
                    game_over = 1; // Game over
                    break;
                }
            }
        }

        // pack Y in bits [19:10], X in bits [9:0]
        u32 seg_val   = ((snake_segments_y[0] & 0x3FF) << 10) | (snake_segments_x[0] & 0x3FF);
        u32 apple_val = ((apple_y & 0x3FF) << 10) | (apple_x & 0x3FF);

        XGpio_DiscreteWrite(&gpioSeg,   GPIO_CHAN, seg_val);
        XGpio_DiscreteWrite(&gpioApple, GPIO_CHAN, apple_val);

        usleep(16000);  // ~60 Hz
    }

    // // 3) Bouncing‐sprite demo
    // int x = 200, y = 200;
    // int dx = 2, dy = 1;

    // int x1 = 100, y1 = 100;

    // int value = rand() % (30 - 5 + 1) + 5;

    // while (1) {
    //     // Get joystick x and y coordinate values
    //     position = JSTK2_getPosition(&joystick);
    //     // Get button states
    //     rawdata = JSTK2_getDataPacket(&joystick);

    //     // pack Y in bits [19:10], X in bits [9:0]
    //     u32 seg_val   = ((y-position.YData & 0x3FF) << 10) | (x+position.XData & 0x3FF);
    //     u32 apple_val = (((y1+value) & 0x3FF) << 10) | ((x+value) & 0x3FF);

    //     XGpio_DiscreteWrite(&gpioSeg,   GPIO_CHAN, seg_val);
    //     XGpio_DiscreteWrite(&gpioApple, GPIO_CHAN, apple_val);

    //     usleep(16000);  // ~60 Hz
    // }

    return 0;
}

void SpawnApple() {
    int valid_position = 0;
    int attempts = 0;
    const int MAX_ATTEMPTS = 100; // Prevent infinite loop
    
    while (!valid_position && attempts < MAX_ATTEMPTS) {
        // Generate position with margins
        apple_x = rand() % (SCREEN_WIDTH - 2*SCREEN_MARGIN_X) + SCREEN_MARGIN_X;
        apple_y = rand() % (SCREEN_HEIGHT - 2*SCREEN_MARGIN_Y) + SCREEN_MARGIN_Y;
        
        // Check if this position overlaps with any snake segment
        if (!IsSnakeOverlap(apple_x, apple_y)) {
            valid_position = 1;
        }
        
        attempts++;
    }
    
    // If we couldn't find a valid position after max attempts,
    // just place it at a random position within the screen bounds
    if (attempts >= MAX_ATTEMPTS) {
        apple_x = rand() % (SCREEN_WIDTH - 2*SCREEN_MARGIN_X) + SCREEN_MARGIN_X;
        apple_y = rand() % (SCREEN_HEIGHT - 2*SCREEN_MARGIN_Y) + SCREEN_MARGIN_Y;
    }
}

int IsSnakeOverlap(int x, int y) {
    int i;
    for (i = 0; i < snake_length; i++) {
        if (CheckCollision(x, y, APPLE_SIZE, 
                           snake_segments_x[i], snake_segments_y[i], SNAKE_SIZE)) {
            return 1; // Overlap detected
        }
    }
    return 0; // No overlap
}

int CheckCollision(int x1, int y1, int size1, int x2, int y2, int size2) {
    // (x1, y1): top-left corner of square 1
    // size1: width/height of square 1
    // Check if two objects with positions (x1,y1) and (x2,y2) and sizes collide
    if (x1 < x2 + size2 &&  // square1's left is left of square2's right
        x1 + size1 > x2 &&  // square1's right is right of square2's left
        y1 < y2 + size2 &&  // square1's top is above square2's bottom
        y1 + size1 > y2) {  // square1's bottom is below square2's top
        return 1; // Collision detected
    }
    return 0; // No collision
}


