function wheelRGB(pos) -- pos entre 0 et 255 (angle entre O et 255)
    pos = 255 - pos
    if (pos < 85) then
    return 255 - pos * 3, 0, pos * 3
    elseif (pos < 170) then
    pos = pos- 85
    return 0, pos * 3, 255 - pos * 3 
    else
    pos = pos- 170
    return pos * 3, 255 - pos * 3,0
    end
end
i=0
neo=neopixel.attach(neopixel.WS2812B, pio.GPIO2,8)
function rainbow()
    while true do
        for j=0,7 do
            r,g,b=wheelRGB((i+j*8)%256)
            neo:setPixel(j,r,g,b)
        end
        neo:update()
        tmr.delayms(10)
        i=i+1
    end
end

t=thread.start(rainbow)