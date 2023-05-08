#define BUTTON_PIN 33
int lastState = HIGH;
int currentState;
int bVal;

void setup() {
  Serial.begin(9600);
  pinMode(BUTTON_PIN, INPUT_PULLUP);
}

void loop() {
  int xVal = analogRead(26);
  int yVal = analogRead(27);
  currentState = digitalRead(BUTTON_PIN);

  if (lastState == LOW && currentState == HIGH)
    bVal = 0;
  else if (lastState == HIGH && currentState == LOW)
    bVal = 1;
  
  lastState = currentState;

  Serial.print(xVal,DEC);
  Serial.print(",");
  Serial.print(yVal,DEC);
  Serial.print(",");
  Serial.print(bVal,DEC);
  Serial.print(",");
  Serial.print("\n");
  delay(100);
}
