
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

sda = 18         -- GPIO pour I2C
scl = 19

i2cadd = 0x3C   -- adresse ecran I2C

-- configuration

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


function wheelRGB(pos) -- pos 0 -> 255 couleur
    pos = 255 - pos
    if (pos < 85) then
         return 255 - pos * 3, 0, pos * 3
    elseif (pos < 170) then 
         pos = pos - 85
         return 0, pos * 3, 255 - pos * 3
    else 
         pos = pos - 170 
         return pos * 3, 255 - pos * 3, 0 
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
                                                            

pcall( function()
  cls()
  gdisplay.setfont(gdisplay.FONT_DEJAVU18)
  cls()
  -- gdisplay.qrcode(10,16,"https://anything-roll-755ffec66072.herokuapp.com/led.mp4",3)

  changeImat("XX-123-XX")
end)

