neo=neopixel.attach(neopixel.WS2812B, pio.GPIO18,8)
lat_pos=0
pos=0
neo:setPixel(pos,255,0,0)
neo:update()
i=0

function moving(dir,count,sw)
    print(dir,count,sw)
    r,g,b=wheelRGB(i)
    if dir ==-1 then
        pos = (pos-1)%8
        i=(i-10)%256
    else 
        pos = (pos+1)%8
        i=(i+10)%256
    end
    neo:setPixel(lat_pos,0,0,0)
    neo:setPixel(pos,r,g,b)
    lat_pos=pos
    neo:update()
end
enc=encoder.attach(pio.GPIO19,pio.GPIO21,pio.GPIO4,moving)