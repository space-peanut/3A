## Commandes utiles

`whoami /priv` : afficher les droits de l'utilisateur actuel
`psexec -i -s cmd.exe` : acceder a l'utilisateur system

#### Dans un terminal ouvert en mode admin :
`net user Administrateur /active:yes` :  Activer compte adminisatrateur
`net user Administrator /active:yes` :  Activer compte adminisatrateur sur un systeme en anglais
`net user Administrateur [MotDePasse]` : definir le mot de passe admin
*note : le compte administrateur ne possede toujours pas tous les droits, pour avoir plus de droits, il faut utiliser le compte systeme*

#### En mode system :
`net localgroup [nomGroupe] /add` : creer un groupe
`net user [nomUser] [motdepasse] /add` : creer un utilisateur
`net localgroup [nomGoupe] [nomUser] /add` : ajouter un utilisateur a un groupe
`icacls [chemin\vers\dossier]` : consulter les droits d'un dossier
`icacls [chemin\vers\dossier] /grant "[nomGroupe]:(R)"`  : donner les droits pour un dossier a un groupe

## C\#
**Prerequis :**
- Installer dotnet 
`dotnet new console -n monPremierProgramme` : initialiser 
`dotnet run` : executer le programme C#
`dotnet new worker --name <Project.Name>` : creer un nouveau service
`sc.exe create ".NET Joke Service" binpath="C:\Path\To\dotnet.exe C:\Path\To\App.WindowsService.dll"` : publier un service
`sc.exe start ".NET [nom service]"` : lancer un service
`sc.exe stop ".NET [nom service]"` : stopper un service



<div align="right">Maxime Soulié</div>