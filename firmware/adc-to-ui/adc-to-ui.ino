// Configure the "rate" message to set how often data is published to the UI
// For faster performance, change comments in the loop to only send "t" and decode in UI

#include "electricui.h"

#define PUB_RATE_DEFAULT_MS 100

// Hardware Pin Allocations
#define PIN_BUTTON      4
#define PIN_PHOTOSENSE  2
#define PIN_STATUS      13
#define PIN_TOUCH_A     3
#define PIN_TOUCH_B     0

#define PIN_RGB_DATA    7
#define PIN_RGB_CLOCK   8
#define NUM_PIXELS      1

// Inputs
uint16_t light_adc      = 0;
uint16_t touch_a_adc    = 0;
uint16_t touch_b_adc    = 0;
bool     button_pressed = 0;

typedef struct {
  uint16_t a;
  uint16_t b;
} TouchValues_t;

TouchValues_t combined_touch = { 0 };

// LED Blink
uint8_t   blink_enable = 1; // if the blinker should be running
uint8_t   led_state  = 0;   // track if the LED is illuminated
uint16_t  glow_time  = 200; // in milliseconds
uint32_t  led_timer  = 0;   // track when the light turned on or off

// Configurable rate publishing to UI
uint32_t  pub_timer  = 0;   // timestamp when last message was published
uint16_t pub_duration = PUB_RATE_DEFAULT_MS;  // Amount of time between publishing data

eui_interface_t serial_comms = EUI_INTERFACE( &serial_write ); 
eui_message_t tracked_variables[] = 
{
  EUI_UINT8(  "led_blink",  blink_enable ),
  EUI_UINT8(  "led_state",  led_state ),
  EUI_UINT16( "lit_time",   glow_time ),

  EUI_UINT8_RO(  "btn",  button_pressed ),

  EUI_UINT16_RO( "tA", touch_a_adc ),
  EUI_UINT16_RO( "tB", touch_b_adc ),
  EUI_UINT16_RO( "light", light_adc ),

  EUI_CUSTOM_RO( "t", combined_touch ),
  EUI_UINT16( "rate", pub_duration ),
};

void setup() 
{
  pinMode( PIN_BUTTON,      INPUT_PULLUP  );
  pinMode( PIN_PHOTOSENSE,  INPUT         );
  pinMode( PIN_STATUS,      OUTPUT        );
  pinMode( PIN_TOUCH_A,     INPUT         );
  pinMode( PIN_TOUCH_B,     INPUT         );

  //use the full capability of the ARM M0 ADC
  analogReadResolution(12); 

  Serial.begin( 115200 );
  pinMode( LED_BUILTIN, OUTPUT );
  eui_setup_interface( &serial_comms );
  EUI_TRACK( tracked_variables );
  eui_setup_identifier( "hello", 5 );

  led_timer = millis();
  pub_timer = millis();
}

void loop() 
{
  serial_rx_handler();

  light_adc      = analogRead( PIN_PHOTOSENSE );
  touch_a_adc    = analogRead( PIN_TOUCH_A );
  touch_b_adc    = analogRead( PIN_TOUCH_B );
  button_pressed = digitalRead( PIN_BUTTON );

  if( millis() - pub_timer >= pub_duration )
  {
    eui_send_tracked("touch_a_adc");
    eui_send_tracked("touch_b_adc");
    eui_send_tracked("light");
//    eui_send_tracked("t");

    pub_timer = millis();
  }    

  // LED Blinking
  if( millis() - led_timer >= glow_time )
  {
    led_state = !led_state;
    digitalWrite( LED_BUILTIN, led_state );
    led_timer = millis();
  }   

}

void serial_rx_handler()
{
  // While we have data, we will pass those bytes to the ElectricUI parser
  while( Serial.available() > 0 )  
  {  
    eui_parse( Serial.read(), &serial_comms );  // Ingest a byte
  }
}
  
void serial_write( uint8_t *data, uint16_t len )
{
  Serial.write( data, len ); //output on the main serial port
}
