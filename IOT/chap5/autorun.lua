function tList()
    thread.list()
end

print("CPU temp :")
print(cpu.temperature())

os.exit()
-- les commandes dans autorun.lua s'executent au demarrage de l'esp 32, os.exit demande le rreboot a chaque reboot -> boucle infinie

