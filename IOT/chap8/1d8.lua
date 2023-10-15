neo=neopixel.attach(neopixel.WS2812B, pio.GPIO2,8)
dice=math.random(0,7)
neo:setPixel(dice,254,0,0)
neo:update()
-- math.random() retourne toujours le meme patern apres un reboot de l'esp32.
-- la valeur renvoyée est toujours 5. 