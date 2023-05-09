# coms3930-mod2

<p align="center">
  <img width="300" height="400" src="/finalprojectdemo.png">
</p>

This readMe keeps it short with just the key information on usage. To read more, check out my [blog](https://www.notion.so/Interactive-Devices-7bde556273a6435181ae392104cf6105?pvs=4)!

<br />

**Necessary hardware for this project:**
<br />
- ESP32 TTGO T-Display
- A USB-C cable to connect to the ESP32
- A computer that can connect to your USB-C cable 
- A breadboard
- A joystick that can connect to the breadboard
- A button that can connect to the breadboard
- wires to connect components on the breadboard

<br />

**Necessary software for this project:**
<br />
- Arduino
- Processing

<br />

**To use Arduino:**
<br />
1. Follow [this link](https://www.arduino.cc/en/software) to download it Arduino if you need to.
2. Make sure you have configured your Arduino environment to use your ESP32. Open the Arduino IDE and go to \<File\>, \<Preferences\>, and paste this [link](https://dl.espressif.com/dl/package_esp32_index.json) into the “Additional Boards Manager URLs” field and hit OK. Then, go to \<Tools\>, \<Manage Libraries\>, and install “tft_eSPI” by “Bodmer”. Then go to \<Tools\>, \<Board\>, \<ESP32 Arduino\>, and then select the “TTGO T1” option. Then go to where your libraries are stored on your computer, and look for the “TFT_eSPI” folder, and open up the User_Setup_Select.h file. Comment out the line “#include <User_Setup.h>” and uncomment the line “#include <User_Setups/Setup25_TTGO_T_Display.h>”
3. Download the file from here called mod2_sketch.ino.ino and open it in the Arduino IDE. With your ESP32 plugged in, hit the upload button (it looks like an arrow pointing to the right).

<br />

**To use Processing:**
- Download and instill Processing [here](https://processing.org/download) if you haven't already
- To figure out what something means, try looking for it in the References [here](https://processing.org/reference).
- The Processing website has a ton of great examples on it. Check some out [here](https://processing.org/examples).

<br />

**Make sure to:**
- Not have the serial monitor open in Arduino when you try to run the Processing program 
