#include "xparameters.h"
#include "xgpio.h"
#include "sleep.h"      // for usleep()
#include "stdlib.h"     // for rand()
#include "PmodJSTK2.h"

// Device IDs (from xparameters.h)
#define SEG_DEVICE_ID     XPAR_AXI_GPIO_SEG_DEVICE_ID
#define APPLE_DEVICE_ID   XPAR_AXI_GPIO_APPLE_DEVICE_ID
#define GPIO_CHAN         1

// Grid & Timing
#define TILE_SIZE         16      // sprite is 16×16 pixels
#define GRID_W            15      // 15 columns (0..14)
#define GRID_H            17      // 17 rows    (0..16)
#define SNAKE_SPEED_US    250000  // 250 ms per move (~4 Hz)

// Joystick calibration
#define JS_CENTER         128     // joystick resting value
#define JS_DEADZONE       32      // +/- deadzone around center

static XGpio    gpioSeg, gpioApple;
static PmodJSTK2 joystick;

void Initialize() {
    int status;

    // 1) Init the PmodJSTK2
    JSTK2_begin(&joystick,
                XPAR_PMODJSTK2_0_AXI_LITE_SPI_BASEADDR,
                XPAR_PMODJSTK2_0_AXI_LITE_GPIO_BASEADDR);
    // invert Y so pushing up gives positive
    JSTK2_setInversion(&joystick, 0, 1);

    // 2) Init the two AXI-GPIOs
    status = XGpio_Initialize(&gpioSeg, SEG_DEVICE_ID);
    if (status != XST_SUCCESS) while (1);
    status = XGpio_Initialize(&gpioApple, APPLE_DEVICE_ID);
    if (status != XST_SUCCESS) while (1);

    // both channels are outputs
    XGpio_SetDataDirection(&gpioSeg,   GPIO_CHAN, 0x0);
    XGpio_SetDataDirection(&gpioApple, GPIO_CHAN, 0x0);
}

void Run() {
    // start head in center
    int tile_x = GRID_W/2, tile_y = GRID_H/2;
    int dx = +1, dy = 0;             // initial direction: right
    // random apple start
    int apple_x = rand() % GRID_W;
    int apple_y = rand() % GRID_H;

    while (1) {
        // --- 1) Read joystick & compute relative offsets ---
        JSTK2_Position pos = JSTK2_getPosition(&joystick);
        int jx = (int)pos.XData - JS_CENTER;  // -128..+127
        int jy = (int)pos.YData - JS_CENTER;  // -128..+127

        // --- 2) Choose new direction (no diagonals, no 180° turns) ---
        if (abs(jx) > abs(jy)) {
            if (jx >  JS_DEADZONE && dx == 0) { dx = +1; dy =  0; }  // right
            if (jx < -JS_DEADZONE && dx == 0) { dx = -1; dy =  0; }  // left
        } else {
            if (jy >  JS_DEADZONE && dy == 0) { dx =  0; dy = -1; }  // up
            if (jy < -JS_DEADZONE && dy == 0) { dx =  0; dy = +1; }  // down
        }

        // --- 3) Advance one grid cell, wrapping at edges ---
        tile_x = (tile_x + dx + GRID_W) % GRID_W;
        tile_y = (tile_y + dy + GRID_H) % GRID_H;

        // --- 4) Apple collision & respawn ---
        if (tile_x == apple_x && tile_y == apple_y) {
            apple_x = rand() % GRID_W;
            apple_y = rand() % GRID_H;
        }

        // --- 5) Convert to pixel coords & pack into 20 bits ---
        u32 seg_val   = (((tile_y * TILE_SIZE) & 0x3FF) << 10)
                       | ((tile_x * TILE_SIZE) & 0x3FF);
        u32 apple_val = (((apple_y * TILE_SIZE) & 0x3FF) << 10)
                       | ((apple_x * TILE_SIZE) & 0x3FF);

        // --- 6) Write sprite positions into hardware ---
        XGpio_DiscreteWrite(&gpioSeg,   GPIO_CHAN, seg_val);
        XGpio_DiscreteWrite(&gpioApple, GPIO_CHAN, apple_val);

        // --- 7) Wait one tick ---
        usleep(SNAKE_SPEED_US);
    }
}

int main(void) {
    Initialize();
    Run();
    return 0;  // never reached
}
