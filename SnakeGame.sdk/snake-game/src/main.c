#include "xparameters.h"
#include "xgpio.h"
#include "sleep.h"   // usleep()

// Pull in the device IDs auto-generated in xparameters.h
#define SEG_DEVICE_ID   XPAR_AXI_GPIO_SEG_DEVICE_ID    // should be 2
#define APPLE_DEVICE_ID XPAR_AXI_GPIO_APPLE_DEVICE_ID  // should be 1

#define GPIO_CHAN       1    // single‐channel AXI-GPIO

static XGpio gpioSeg, gpioApple;

int main(void)
{
    int status;

    // 1) Initialize the two GPIO instances
    status = XGpio_Initialize(&gpioSeg,   SEG_DEVICE_ID);
    if (status != XST_SUCCESS) return XST_FAILURE;

    status = XGpio_Initialize(&gpioApple, APPLE_DEVICE_ID);
    if (status != XST_SUCCESS) return XST_FAILURE;

    // 2) Make both channels outputs (MicroBlaze → fabric)
    XGpio_SetDataDirection(&gpioSeg,   GPIO_CHAN, 0x0);
    XGpio_SetDataDirection(&gpioApple, GPIO_CHAN, 0x0);

    // 3) Bouncing‐sprite demo
    int x = 0, y = 0;
    int dx = 2, dy = 1;

    while (1) {
        // pack Y in bits [19:10], X in bits [9:0]
        u32 seg_val   = ((y & 0x3FF) << 10) | (x & 0x3FF);
        u32 apple_val = (((y+64) & 0x3FF) << 10) | ((x+128) & 0x3FF);

        XGpio_DiscreteWrite(&gpioSeg,   GPIO_CHAN, seg_val);
        XGpio_DiscreteWrite(&gpioApple, GPIO_CHAN, apple_val);

        // bounce off the visible 0…(640−16), 0…(480−16) edges
        x += dx;
        if (x < 0 || x > (640-16)) dx = -dx;

        y += dy;
        if (y < 0 || y > (480-16)) dy = -dy;

        usleep(16000);  // ~60 Hz
    }

    return 0;
}
