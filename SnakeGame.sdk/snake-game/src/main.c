#include "xparameters.h"
#include "xgpio.h"
#include "sleep.h"   // usleep()
#include "stdlib.h"
#include "PmodJSTK2.h"

// Pull in the device IDs auto-generated in xparameters.h
#define SEG_DEVICE_ID   XPAR_AXI_GPIO_SEG_DEVICE_ID    // should be 2
#define APPLE_DEVICE_ID XPAR_AXI_GPIO_APPLE_DEVICE_ID  // should be 1

#define GPIO_CHAN       1    // single‐channel AXI-GPIO

static XGpio gpioSeg, gpioApple;

PmodJSTK2 joystick;

void Initialize();
void Run();

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

    // 1) Initialize the two GPIO instances
    status = XGpio_Initialize(&gpioSeg,   SEG_DEVICE_ID);
    if (status != XST_SUCCESS) return XST_FAILURE;

    status = XGpio_Initialize(&gpioApple, APPLE_DEVICE_ID);
    if (status != XST_SUCCESS) return XST_FAILURE;

    // 2) Make both channels outputs (MicroBlaze → fabric)
    XGpio_SetDataDirection(&gpioSeg,   GPIO_CHAN, 0x0);
    XGpio_SetDataDirection(&gpioApple, GPIO_CHAN, 0x0);

    // 3) Bouncing‐sprite demo
    int x = 200, y = 200;
    int dx = 2, dy = 1;

    int x1 = 100, y1 = 100;

    int value = rand() % (30 - 5 + 1) + 5;

    while (1) {
        // Get joystick x and y coordinate values
        position = JSTK2_getPosition(&joystick);
        // Get button states
        rawdata = JSTK2_getDataPacket(&joystick);

        // pack Y in bits [19:10], X in bits [9:0]
        u32 seg_val   = ((y-position.YData & 0x3FF) << 10) | (x+position.XData & 0x3FF);
        u32 apple_val = (((y1+value) & 0x3FF) << 10) | ((x+value) & 0x3FF);

        XGpio_DiscreteWrite(&gpioSeg,   GPIO_CHAN, seg_val);
        XGpio_DiscreteWrite(&gpioApple, GPIO_CHAN, apple_val);

        usleep(16000);  // ~60 Hz
    }

    return 0;
}
