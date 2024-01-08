
-- introduction IOT / UBS
-- (c) Gildas Menier
-- gildas.menier@univ-ubs.fr

-- contient les définitions de
-- ledon()
-- ledoff()
-- cls()
-- console()
-- wheelRGB

-- changer les valeurs qui suivent en fonction de 
-- vos branchements



local sda = 18         -- GPIO pour I2C
local scl = 19

i2cadd = 0x3C   -- adresse ecran I2C

local reset16 = false -- reset ecran

i2c.setpins(0,sda,scl) -- config i2C

-- ecran

if reset16 then -- reset pour l'ecran si necessaire
  pio.pin.setdir(pio.OUTPUT, pio.GPIO16);
  pio.pin.setlow(pio.GPIO16)
  tmr.delayms(50);
  pio.pin.sethigh(pio.GPIO16)
  tmr.delayms(50);
end

pcall( function() -- pas d'erreur
    gdisplay.attach(gdisplay.SSD1306_128_64, gdisplay.LANDSCAPE, false, i2cadd)
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

pcall( function()
        cls()
        gdisplay.qrcode(10,16,"https://anything-roll-755ffec66072.herokuapp.com/iot.html",3)
        gdisplay.qrcode(75,16,"https://onlinealarmkur.com/world/fr/                    ",3)

end)