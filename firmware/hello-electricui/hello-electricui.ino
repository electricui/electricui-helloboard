#include <electricui.h>
#include <Adafruit_DotStar.h>
#include <SPI.h>

// Hardware Pin Allocations
#define PIN_BUTTON      4
#define PIN_PHOTOSENSE  2
#define PIN_STATUS      13
#define PIN_TOUCH_A     3
#define PIN_TOUCH_B     0

#define PIN_RGB_DATA    7
#define PIN_RGB_CLOCK   8
#define NUM_PIXELS      1

// RGB LED object
Adafruit_DotStar strip = Adafruit_DotStar(  NUM_PIXELS, 
                                            PIN_RGB_DATA, 
                                            PIN_RGB_CLOCK, 
                                            DOTSTAR_BRG );

typedef struct rgb_t {
  uint16_t r;
  uint16_t g;
  uint16_t b;
};

// Inputs
uint16_t light_adc      = 0;
uint16_t touch_a_adc    = 0;
uint16_t touch_b_adc    = 0;
uint8_t  button_pressed = 0;

// Outputs
uint8_t status_led = 0;
rgb_t dotstar = { 0 };

char device_nickname[16] = "HelloStick Demo";

eui_interface_t usb_cdc;

eui_message_t tracked_variables[] = {
  EUI_UINT16_RO(  "light", light_adc      ),
  EUI_UINT16_RO(  "tA",    touch_a_adc    ),
  EUI_UINT16_RO(  "tB",    touch_b_adc    ),
  EUI_UINT8_RO(   "but",   button_pressed ),

  EUI_UINT8(    "led", status_led ),
  EUI_CUSTOM(   "rgb", dotstar    ),


  EUI_CHAR_ARRAY( "name", device_nickname ),
};


void setup_pins()
{
  pinMode( PIN_BUTTON,      INPUT_PULLUP  );
  pinMode( PIN_PHOTOSENSE,  INPUT         );
  pinMode( PIN_STATUS,      OUTPUT        );
  pinMode( PIN_TOUCH_A,     INPUT         );
  pinMode( PIN_TOUCH_B,     INPUT         );

  //use the full capability of the ARM M0 ADC
  analogReadResolution(12); 
}

void setup()
{
  Serial.begin(115200); //it's actually USB therefore baud doesn't matter
  setup_pins();
  
  usb_cdc.output_func = &usb_write;
  setup_interface( &usb_cdc );
  EUI_TRACK( tracked_variables );

  uint32_t * uuid_buf = get_chip_uuid();  //128-bit UUID
  setup_identifier( (char*)uuid_buf, 16 );

  strip.begin(); 
  strip.show();  // Turn all LEDs off at start
}

void loop()
{
  while( Serial.available() > 0 )  
  {  
    parse_packet( Serial.read(), &usb_cdc );
  }

  // Sample inputs
  light_adc   = analogRead( PIN_PHOTOSENSE );
  touch_a_adc = analogRead( PIN_TOUCH_A );
  touch_b_adc = analogRead( PIN_TOUCH_B );
  button_pressed = !digitalRead( PIN_BUTTON );

  // Control the status LED  
  analogWrite( PIN_STATUS, status_led );

  //control the RGB led
  strip.setPixelColor( 0, dotstar.r, dotstar.g, dotstar.b );
  strip.show(); 
  
  delay(1);
}

uint32_t * get_chip_uuid() 
{
  static uint32_t uuid[3] = { 0 };
  uuid[0] = *(volatile uint32_t *)0x0080A00C;
  uuid[1] = *(volatile uint32_t *)0x0080A040;
  uuid[2] = *(volatile uint32_t *)0x0080A044;
  uuid[3] = *(volatile uint32_t *)0x0080A048;
  
  return uuid;
}

void usb_write( uint8_t *data, uint16_t length )
{
  Serial.write( data, length );
}