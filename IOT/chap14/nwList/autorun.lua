print("CPU temp :")
print(cpu.temperature())
-- dofile("functions.lua")
dofile("console.lua")
n=net.wf.scan(true)
-- l'esp 32 ne peut pas envoyer et recevoir en même temps, il faut donc scanner avant de se connecter
net.wf.setup(net.wf.mode.AP, "max", "12345678890")
net.wf.start()
n=n

net.service.http.start()
