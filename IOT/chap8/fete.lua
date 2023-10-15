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
neo=neopixel.attach(neopixel.WS2812B, pio.GPIO2,8)
function fete()
    -- while true do
        r,g,b=wheelRGB(math.random(0,255))
        neo:setPixel(math.random(0,7) ,r//5,g//5,b//5)
        neo:update()
        tmr.delayms(100)

    -- end
end

t=thread.start(fete)