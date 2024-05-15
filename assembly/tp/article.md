ring 0-3 (0 c'est kenerlland, 3 c'est userland)

on veut voir comment fonctionne un appel par un ring 3 d'une fonction en ring 0
CS permet de verifier niveau : 

SYSENTER : fast call to lvl 0 system procedure -> transition vers mode kernel
pas using table de anya (:pointint:) contrairement a interrupt syst (ancienne methode, mais lent). use MSR  (model specific register)(lecture seulement en ring 0).
sysenter utilise un msr pour changer le CS (qui permet de definir le niveau du ring(ses 2 premiers bits sont le CPL)).
addressages changent en mode kernel (>80000000) en regardant ce qui se trouve sur l'EIP, donc la prochaine instruction a etre executee, on remarque que l'addresse se trouve bien dans les adresses reservees au mode kernel.

l'instruction a appeler a ete stocke dans EAX, puis on multiplie par 4 l'adresse memoire pour l'ajouter a la table SSDT. le resultat est aussi la place de l'appel dans EBX, qui est appele plus tard.

Pour continuer l'execution, il faut maintenant retourner en Userland (ring 3) avec la fonction SYSEXIT, qui a le fonctionnement inverse de SYSENTER

Conclusion : apres avoir decompose les appels systemes, on peut imaginer plusieurs hooks, c'est a dire un fonctionnement detournee du programme. Par exemple modifier l'instruction executee en mode kernel. L7utilite d'un tel hook pourrait etre bienveillante comme malveillante.