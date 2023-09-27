device = pwm.attach(4,4,0.2)
device:start()
    print("short")
    tmr.delayms(2000)
    print("long")
    device:setduty(0.8)
    tmr.delayms(2000)

    print("gradual")
    device:setfreq(20000)
    for j=1,1000 do
        print(j)
        device:setduty(j/1000)
        tmr.delayms(5)
    end
    for j=1000,1,-1 do
        print(j)
        device:setduty(j/1000)
        tmr.delayms(5)
    end
device:stop()
device:detach()