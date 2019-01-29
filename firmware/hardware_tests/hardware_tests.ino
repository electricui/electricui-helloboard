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
Adafruit_DotStar strip = Adafruit_DotStar( NUM_PIXELS, PIN_RGB_DATA, PIN_RGB_CLOCK, DOTSTAR_BRG );

// Inputs
uint16_t light_adc      = 0;
uint16_t touch_a_adc    = 0;
uint16_t touch_b_adc    = 0;
bool     button_pressed = 0;

// Working variable for the RGB LED colour wheel 'animation'
uint8_t  hue = 0;

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
  Serial.begin(115200);

  setup_pins();
  
  strip.begin(); 
  strip.show();  // Turn all LEDs off
}

void loop()
{
  // Sample inputs
  light_adc   = analogRead( PIN_PHOTOSENSE );
  touch_a_adc = analogRead( PIN_TOUCH_A );
  touch_b_adc = analogRead( PIN_TOUCH_B );
  button_pressed = digitalRead( PIN_BUTTON );
  
  //turn the status led on when the button is pressed
  digitalWrite( PIN_STATUS, !button_pressed );


  //control the RGB led
  strip.setPixelColor(0, wheel_hue(hue++));
  //strip.setPixelColor(0, strip.Color(10, 10, 10));

  strip.show(); 
  print_sensors();
  
  delay(100); //blocking delay to reduce text output rate (its fine for bringup)
}

// Print sensor values to serial
void print_sensors()
{
  Serial.print("Button: ");
  Serial.println(button_pressed);
  Serial.print("Photosensor: ");
  Serial.println(light_adc);
  Serial.print("Touch A: ");
  Serial.println(touch_a_adc);
  Serial.print("Touch B: ");
  Serial.println(touch_b_adc);
  Serial.println("");
}

// Hue transition on a 8-bit position value, returns RGB
uint32_t wheel_hue( byte hue_position ) 
{
  hue_position = 255 - hue_position;
  
  if(hue_position < 85) 
  {
    return strip.Color(255 - hue_position * 3, 0, hue_position * 3);
  }
  
  if(hue_position < 170) 
  {
    hue_position -= 85;
    return strip.Color(0, hue_position * 3, 255 - hue_position * 3);
  }
  
  hue_position -= 170;
  return strip.Color(hue_position * 3, 255 - hue_position * 3, 0);
}
