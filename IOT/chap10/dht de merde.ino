#include <DHT.h>

#define DHT_PIN 2
#define DHT_TYPE DHT22

DHT dht(DHT_PIN, DHT_TYPE);

void setup() {
    Serial.begin((9600));
    dht.beging();
}

void loop() {
    delay(2000);

    float t= dht.readTemperature();
    float h=dht.readHumidity();

    if (isnan(t)||isnan(h)){
        Serial.println("Erreur de lecture");
        return;
    }
    Serial.print("Temperature: ");
    Serial.print(t);
    Serial.print("°C");
    Serial.print("Humidite: ");
    Serial.print(h);
    Serial.print("%");
    

}
