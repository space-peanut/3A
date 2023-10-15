s=sensor.attach("DHT22",pio.GPIO15)
tmr.delayms(90)

--writes humidity and temperature (in K) in the top yellow lines
function writeData(refreshDelay)
    gdisplay.rect( {0,0}, 128, 16, gdisplay.BLACK, gdisplay.BLACK )
    gdisplay.write({0,0},s:read("humidity").."% "..(s:read("temperature")+273.15).."K")
    tmr.delayms(refreshDelay)
end

--draws the graph of humidity. when it reaches the end of the screen, 
-- it clears the graph and starts again
function drawGraph(t, refreshDelay)
    if len ==1 then
        gdisplay.putpixel({#t+3,63-((t[#t]*44)/100)})
    else
        gdisplay.line({#t+3-1,63-((t[#t-1]*44)/100)},{#t+3,63-((t[#t]*44)/100)})
    end
    tmr.delayms(refreshDelay)
    if len==MAX_LENGTH then
        len=0
        gdisplay.rect( {4,16}, 128,64-16-3 , gdisplay.BLACK, gdisplay.BLACK )
        hs={}
    end
end

h=0
hs={}
MAX_LENGTH=127-3
len=0

cls()
-- axis
gdisplay.line({2,63},{2,16})
gdisplay.line({0,61},{127,61})
gdisplay.putpixel({1,17})
gdisplay.putpixel({3,18})
gdisplay.putpixel({126,62})
gdisplay.putpixel({126,60})

--in case you want to update the current data at a different rate than the graph
t2=thread.start(function ()
    while true do
    try(
        function ()
                writeData(800)
        end
        )
    end            
end
)

t=thread.start(function ()
    while true do
        try(function ()
            len=len+1
            h=s:read("humidity")
            table.insert(hs,h)
            drawGraph(hs, 5000)
        end)
    end
end
)


