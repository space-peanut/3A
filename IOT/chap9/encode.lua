on=false
function switch(pos,count,sw)
    if sw==1 then
        on=not on
        if on then
            ledon()
        else
            ledoff()
        end
    end
end
enc=encoder.attach(pio.GPIO19,pio.GPIO21,pio.GPIO4, switch)
