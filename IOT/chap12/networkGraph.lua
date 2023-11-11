--writes humidity and temperature (in K) in the top yellow lines
function writeData(refreshDelay)
    gdisplay.rect( {0,0}, 128, 16, gdisplay.BLACK, gdisplay.BLACK )
    gdisplay.write({0,0}, w[0].rssi.."dBm".." in "..w[0].ssid)
    tmr.delayms(refreshDelay)
end



--draws the graph of humidity. when it reaches the end of the screen, 
-- it clears the graph and starts again
function drawGraph(t, refreshDelay)
    if len ==1 then
        -- gdisplay.putpixel({#t+3,63-((t[#t]*44)/100)})
        gdisplay.putpixel({#t+3,63-((100-(t[#t]*44))/100)})
    else
        -- gdisplay.line({#t+3-1,63-((t[#t-1]*(-44)/100))},{#t+3,63-((t[#t]*(-44))/100)})
        gdisplay.line({#t+3-1,63-((100-(t[#t-1]*44))/100)},{#t+3,63-((100-(t[#t]*44))/100)})

    end
    tmr.delayms(refreshDelay)
    if len==MAX_LENGTH then
        len=0
        gdisplay.rect( {4,16}, 128,64-16-3 , gdisplay.BLACK, gdisplay.BLACK )
        hs={}
    end
end
db=0
dBs={}
MAX_LENGTH=127-3
len=0

-- axis
gdisplay.line({2,63},{2,16})
gdisplay.line({0,61},{127,61})
gdisplay.putpixel({1,17})
gdisplay.putpixel({3,18})
gdisplay.putpixel({126,62})
gdisplay.putpixel({126,60})


t=thread.start(function ()
    while true do
        try(function ()
            w=net.wf.scan(true)
            writeData(0)
            len=len+1
            dB=-w[0].rssi
            table.insert(dBs,dB)
            drawGraph(dBs, 800)
        end)
    end
end
)