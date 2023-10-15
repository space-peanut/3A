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

thread.start(function()
    neo=neopixel.attach(neopixel.WS2812B, pio.GPIO2,8)
    
    pixel=0
    dir=0
    
    while true do
            r,g,b = wheelRGB((255*pixel)//8)
            neo:setPixel(pixel,r,g,b)
            neo:update()
            tmr.delayms(100)
            neo:setPixel(pixel,r//20,g//20,b//20)
            if (dir==0)then
                    if(pixel==7) then
                            dir=1
                            pixel=6
                    else
                            pixel=pixel+1
                    end
            else
                    if(pixel==0) then
                            dir=0
                            pixel=1
                    else
                            pixel=pixel-1
                    end
            end
    end
end)