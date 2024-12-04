

#include <WiFi.h>
#include <HTTPClient.h>
#include <SPI.h>
#include <MFRC522.h>

#define SS_PIN  5 
#define RST_PIN 0 

MFRC522 rfid(SS_PIN, RST_PIN); 
const char* ssid = "CalderonWifi";
const char* password = "@July07112001"; 
const char* serverUrl = "http://192.168.1.19/rfid_project/rfid.php"; 

void setup() {
    Serial.begin(115200);
    SPI.begin(); 
    rfid.PCD_Init(); 
    WiFi.begin(ssid, password); 

    while (WiFi.status() != WL_CONNECTED) {
        delay(1000);
        Serial.println("Connecting to WiFi...");
    }

    Serial.println("Connected to WiFi");
    Serial.print("ESP32 IP Address: ");
    Serial.println(WiFi.localIP());
}

void loop() {
    // Check for new scanned card
    if (!rfid.PICC_IsNewCardPresent() || !rfid.PICC_ReadCardSerial()) {
        return;
    }

    // Construct the RFID ID as string
    String rfidUID = "";
    for (byte i = 0; i < rfid.uid.size; i++) {
        rfidUID += String(rfid.uid.uidByte[i], HEX);
    }
    rfidUID.toUpperCase(); // Make the RFID uppercase for consistency

    Serial.println("RFID UID: " + rfidUID);

    // Send the UID to the backend (PHP)
    HTTPClient http;
    String redirectUrl = "http://192.168.1.19/rfid_project/rfid.php?rfid=" + rfidUID;  

   

    http.begin(redirectUrl.c_str());
    int httpResponseCode = http.GET();

    // Check for successful response
    if (httpResponseCode > 0) {
        String response = http.getString();
        Serial.println("Response :" + response);
           
    } else {
        Serial.println("Error on sending request: " + String(httpResponseCode));
    }

    http.end();
    rfid.PICC_HaltA();  
    delay(2000);        
}


