try(
    function ()
    enc = encoder.attach(pio.GPIO19,pio.GPIO21,pio.GPIO21,Lecture)end, function ()end, function() end
)

try(
    function ()
        neo = neopixel.attach(neopixel.WS2812B,pio.GPIO23,8)end,function() end, function() end
)
------
timer = 100

-- fonction pour mettre à jour quand la valeur change
function Lecture(dir,counter,button)
    print("direction:"..dir..",counter:"..counter..",button:"..button)
end
--

-- fonction de controles de neopixel 
function Neoledon()
    for i=0,7 do
        neo:setPixel(i,0,0,0)
    end
end

function Neoledoff()
    for i=0,7 do
        neo:setPixel(i,0,0,20)
    end
end
--

-- configuration de l'état des leds
function Bouton(b)
    -- nous ne intéréssons que à la parité de notre bouton : si impaire => lumière allumé de base sinon lumière éteinte 
    if b // 2 == 0 then
        Neoledon()
    else
        Neoledoff()
    end
end

function speed(smoin1,s,timer)
    -- 
    if smoin1>s then
        timer = timer - 1
    else 
        timer = timer + 1
    end
    return timer
end
--

-- "main"
function JourNuit()
    while true do
        try(
        function ()
            p,s = enc:read()
            Bouton(s)
            neo:update()
        end,
        function (where,line,error,message)
            print(message)
        end,
        function ()
            tmr.delayms(50)
        end
        )
    end
end