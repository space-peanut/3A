print("CPU temp :")
print(cpu.temperature())
-- dofile("functions.lua")
dofile("console.lua")
net.wf.setup(net.wf.mode.AP, "max", "12345678890")
net.wf.start()

net.service.http.start()
pio.pin.setdir(pio.OUTPUT, pio.GPIO4)
