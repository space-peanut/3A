sda=18
scl=19

i2cadd=0x3C
local reset16=false
i2c.setpins(0,sda,scl)

if reset16 then
    pio.pin.setdir(pio.OUTPUT, pio.GPIO16)
    pio.pin.setlow(pio.GPIO16)
    tmr.delayms(50)
    pio.pin.sethigh(pio.GPIO16)
    tmr.delayms(50)
end

pcall( function() -- pas d'erreur
    gdisplay.attach(gdisplay.SSD1306_128_32, gdisplay.LANDSCAPE, false, i2cadd)
    gdisplay.clear()
    gdisplay.setfont(gdisplay.FONT_LCD)
    gdisplay.setwrap(false)
end)

local consolepos = 0
local consoletab = {}
local consolemax = 6

local oledflip = 1

function cls() 
    if (consolemax==6) then gdisplay.clear()
    else 
        gdisplay.rect( {0,0}, 128, 9*consolemax, {0,0,0}, {0,0,0} )
    end
    if oledflip ~= 1 then gdisplay.clear() end
    consolepos = 0
    consoletab={}
    for i=0, consolemax do
         consoletab[i] = ""
    end
end

function changeImat(plaque)
    -- 9 char max, preferer un format style XX-123-XX
    cls()
    gdisplay.rect( {30,15}, 5,5, gdisplay.WHITE, gdisplay.WHITE )
    tmr.delayms(500)
    gdisplay.rect( {60,15}, 5,5, gdisplay.WHITE, gdisplay.WHITE )
    tmr.delayms(500)
    gdisplay.rect( {90,15}, 5,5, gdisplay.WHITE, gdisplay.WHITE )
    tmr.delayms(500)
    cls()
    gdisplay.rect( {30,15}, 5,5, gdisplay.WHITE, gdisplay.WHITE )
    tmr.delayms(500)
    gdisplay.rect( {60,15}, 5,5, gdisplay.WHITE, gdisplay.WHITE )
    tmr.delayms(500)
    gdisplay.rect( {90,15}, 5,5, gdisplay.WHITE, gdisplay.WHITE )
    tmr.delayms(500)
    cls()
    gdisplay.write(10,15,plaque)
  end

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
neo=neopixel.attach(neopixel.WS2812B, pio.GPIO4,8)
function fete()
    pio.pin.setdir(pio.OUTPUT, pio.GPIO2)
    i=0
    j=0
    br=0
    while true do
        r,g,b=wheelRGB(j)
        r1,g1,b1=wheelRGB((j+15)%256)
        r2,g2,b2=wheelRGB((j+30)%256)
        r3,g3,b3=wheelRGB((j+45)%256)
        r4,g4,b4=wheelRGB((j+60)%256)
        r5,g5,b5=wheelRGB((j+75)%256)
        r6,g6,b6=wheelRGB((j+90)%256)
        r7,g7,b7=wheelRGB((j+105)%256)

        neo:setPixel(0 ,r,g,b)
        neo:setPixel(1 ,r1,g1,b1)
        neo:setPixel(2 ,r2,g2,b2)
        neo:setPixel(3 ,r3,g3,b3)
        neo:setPixel(4 ,r4,g4,b4)
        neo:setPixel(5 ,r5,g5,b5)
        neo:setPixel(6 ,r6,g6,b6)
        neo:setPixel(7 ,r7,g7,b7)

        if i>=190 then
            neo:setBrightness(0)
        else
            neo:setBrightness(1)
            if i>=20 then
                pio.pin.setlow(pio.GPIO2)
            else
                pio.pin.sethigh(pio.GPIO2)
            end
        end

        i=(i+30)%256
        j=(j+10)%256
        neo:update()
        tmr.delayms(50)

    end
end

th=thread.start(fete)
th2=thread.start(
    gdisplay.setfont(gdisplay.FONT_DEJAVU18),
    changeImat("EY-972-LA")
)