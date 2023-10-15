
function catch(what)
    return what[1]
end

function try(what)
    status, result = pcall(what[2])
    if not status then
        what[3](result)
    else what[1](result)
    end
    return result
end
s=sensor.attach("DHT22",pio.GPIO15)
tmr.delayms(90)
gdisplay.setfont(gdisplay.FONT_LCD)

-- no thread
-- while true do
--     cls()
--     print("Temperature : "..s:read("temperature").."°C")
--     console(s:read("temperature").."°C")
--     tmr.delayms(20000)
-- end

--thread
t=thread.start(function ()
    cls()
    while true do
        console((s:read("temperature")+273.15).."K")
        tmr.delayms(5000)
        print(os.bootcount())
        os.sleep(60*5)
    end
end
)