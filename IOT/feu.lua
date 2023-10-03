neo=neopixel.attach(neopixel.WS2812B, pio.GPIO2,8)

while true do
    for i=3,4 do
        neo:setPixel(i,0,0,0)
    end
    for i=5,7 do
        neo:setPixel(i,255,0,0)
    end
    neo:update()
    tmr.delayms(3000)
    for i=5,7 do
        neo:setPixel(i,0,0,0)
    end

    for i=0,2 do
        neo:setPixel(i,0,255,0)
    end
    neo:update()
    tmr.delayms(3000)
    for i=0,2 do
        neo:setPixel(i,0,0,0)
    end
    for i=3,4 do
        neo:setPixel(i,255,100,0)
    end
    neo:update()
    tmr.delayms(1000)
end


