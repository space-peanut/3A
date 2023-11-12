print("CPU temp :")
print(cpu.temperature())
-- dofile("functions.lua")
dofile("console.lua")
net.wf.setup(net.wf.mode.AP, "max", "12345678890")
net.wf.start()

nb=0

net.service.http.start()
t=thread.start(function ()
    while true do
        try(function ()
            gdisplay.rect( {0,0}, 128, 16, gdisplay.BLACK, gdisplay.BLACK )
            gdisplay.write({0,0},"acces page : "..nb)
            tmr.delayms(800)
        end)
    end
end
)