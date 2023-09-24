pio.pin.setdir(pio.OUTPUT,pio.GPIO18)

for j=1,10 do 

    pio.pin.sethigh(pio.GPIO18)
    tmr.delayms(500)
    pio.pin.setlow(pio.GPIO18)
    tmr.delayms(500)
end 