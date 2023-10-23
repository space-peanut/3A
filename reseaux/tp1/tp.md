processus mise en place VLAN :
creation d'une vlan :
```
enable
conf
vlan [id]
name [vlan name]

```

interface de trunk : 
```
interface [interface]
switchport mode trunk
switchport trunk allowed vlan [id],[id2],...
switchport trunk native vlan [id]
```

associer une IP avec le masque correspondant aux machines
ping
