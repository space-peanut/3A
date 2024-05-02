ring 0-3 (0 c'est kenerlland, 3 c'est userland)

on veut voir comment fonctionne un appel par un ring 3 d'une fonction en ring 0

SYSENTER : fast call to lvl 0 system procedure -> transition vers mode kernel
pas using table de anya (:pointint:) contrairement a interrupt syst (ancienne methode, mais lent). use MSR  (model specific register)(lecture seulement en ring 0).
sysenter utilise un msr pour changer le CS (qui permet de definir le niveau du ring(ses 2 premiers bits sont le CPL)).

