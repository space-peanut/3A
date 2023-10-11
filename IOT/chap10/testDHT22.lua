s = sensor.attach("DHT22", pio.GPIO15)

while true do
  print("temp: "..s:read("temperature")..", hum: "..s:read("humidity"))
  tmr.delayms(500)
end

-- test