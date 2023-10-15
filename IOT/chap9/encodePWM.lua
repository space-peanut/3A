f=1
device = pwm.attach(2,f,0.2)
device:start()
function freq(pos, count, sw)
    print(pos,count,sw)
    if pos==1 then
        f=f+1
        device:setfreq(f)

    else 
        f=f-1
        device:setfreq(f)
    end
end

enc=encoder.attach(pio.GPIO19,pio.GPIO21,pio.GPIO4, freq)