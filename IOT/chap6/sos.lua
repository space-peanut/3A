pio.pin.setdir(pio.OUTPUT, pio.GPIO2)

while true do
    -- blink sos on gpio2
    for i = 1, 3 do
        pio.pin.sethigh(pio.GPIO2)
        tmr.delayms(250)
        pio.pin.setlow(pio.GPIO2)
        tmr.delayms(250)
    end

    for i = 1, 3 do
        pio.pin.sethigh(pio.GPIO2)
        tmr.delayms(500)
        pio.pin.setlow(pio.GPIO2)
        tmr.delayms(250)
    end

    for i = 1, 3 do
        pio.pin.sethigh(pio.GPIO2)
        tmr.delayms(250)
        pio.pin.setlow(pio.GPIO2)
        tmr.delayms(250)
    end
    tmr.delayms(1000)
    

end