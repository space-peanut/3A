client=mqtt.Client("master-456","mqtt.server",1883,false)
client:connect("","")
client:publish("master","Hello from ESP8266",mqtt.QOS0)
