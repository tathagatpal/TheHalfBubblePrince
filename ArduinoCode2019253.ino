//PIS PROJECT THE HALF BUBBLE PRINCE
//TEAM MEMBERS : MEETAKSHI SETIYA , TATHAGAT PAL , KUSHAL JUNEJA

// This piece of code is used to send the data of button , ultrasonic sensor and flex sensor to the serial monitor which will be later read by the processing software
#include <NewPing.h>
#define SONAR_NUM 2     // Number of sensors.
#define MAX_DISTANCE 30 // Maximum distance (in cm) to ping.

NewPing sonar[SONAR_NUM] = {   // Sensor object array.
  NewPing(4, 5, MAX_DISTANCE), // Each sensor's trigger pin, echo pin, and max distance to ping. 
  NewPing(6, 7, MAX_DISTANCE)
};

 const int ledPin1=9;
 const int ledPin2=10;
const int buttonPin = 2;     // the number of the pushbutton pin
int flexpress=0;
int buttonState = 0;
int x=0;
int y=0;

void setup() {
  Serial.begin(9600);  // Open serial monitor at 115200 or 9600 baud to see ping results.
pinMode(ledPin1, OUTPUT);
pinMode(ledPin2, OUTPUT);
  
  }

void loop() { 
  
  // read the state of the pushbutton value:
  buttonState = digitalRead(buttonPin);


  // check if the pushbutton is pressed. If it is, the buttonState is HIGH:
  if (buttonState == HIGH) {
    x=1;
   
  } else {
    // turn LED off:
    x=0;
  }
  
  y=analogRead(A0);

  if(y<820)
  {
    flexpress=1;
  }
  else
  {
    flexpress=0;
  }
  
  if(x==1)
	  digitalWrite(ledPin1, HIGH);
  } else {
    // turn LED off:
    digitalWrite(ledPin1, LOW);
  }
  
  if(flexpress==1)
	  digitalWrite(ledPin2, HIGH);
  } else {
    // turn LED off:
    digitalWrite(ledPin2, LOW);
  }
  
  
  for (uint8_t i = 0; i < SONAR_NUM; i++) { // Loop through each sensor and display results.
    delay(40); // Wait 50ms between pings (about 20 pings/sec). 29ms should be the shortest delay between pings.
    Serial.print(sonar[i].ping_cm());
    Serial.print('-');
  }
  Serial.print(flexpress);
  Serial.print("-");
  Serial.print(x);
  Serial.println();//prints a new line after the prev output


}
