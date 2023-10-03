pio.pin.setdir(pio.OUTPUT, pio.GPIO2)
while true do
    for i = 1, 3 do
        pio.pin.setlow(pio.GPIO2)
        tmr.delayms(500)
        ledOff()
        tmr.delayms(250)
        
    end

    for i = 1, 3 do
        pio.pin.setlow(pio.GPIO2)
        tmr.delayms(250)
        ledOff()
        tmr.delayms(250)
        
    end

    for i = 1, 3 do
        pio.pin.setlow(pio.GPIO2)
        tmr.delayms(500)
        ledOff()
        tmr.delayms(250)
        
    end
    tmr.delayms(1000)

end