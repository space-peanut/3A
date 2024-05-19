# Rappel des objectifs :
Le but de ce projet était de reprendre le tp sur les todolists, et d'implémenter le stockage dans une base de données.

Pour rappel, voici ce a quoi ressemble le projet :
![[Pasted image 20240516003836.png]]

J'ai choisi d'utiliser le framework VueJS pour l'affichage, car il permet de grandement accélérer la création du front end.
Pour la base de données j'ai choisi d'utiliser Mongodb puisque beaucoup plus simple à utiliser qu'une base de données SQL, et très adaptée au JavaScript.


## Vue

Le framework Vue est un framework open source, qui se base sur la création et la gestion de composants web. Ces composants web peuvent être eux-mêmes composer de composants, auxquels il est possible de passer des paramètres dynamiquement.

Un composant se compose de trois parties :
- script : qui est la partie logique du composant
- template : qui représente le HTML du composant
- style : qui représente son CSS
## Base de données

La base de données contient une seule collection `users`.
Une entrée dans cette base est arrangée comme ceci :
```json
{ 
	"_id": {…}, 
	"username": "username", 
	"password": "hash du mot de pass",
	"todos": [ 
		{ 
			"id" : "id du todo"
			"text": "texte du todo", 
			"done": false # etat de la tache
		}, 
		...
	] 
}
```

`"_id"` est géré par MongoDB.
Cette architecture permet d'ajouter, supprimer et editer facilement un todo ou un utilisateur, pour peu de disposer de son username.

# État d'avancement

N'ayant pas réussi à complètement implémenter les sessions, mon projet n'est pas fonctionnel. En effet. Je peux créer et connecter un utilisateur, cependant mes fonctions d'ajout a la base de données se servent des sessions pour trouver a quel utilisateur ajouter une tache, et donc ne fonctionnent pas. De ce que je peux voir, la session n'est pas stockée sur le client, qui ne peut donc pas envoyer ses informations d'identification.  
Cependant, je pense en être au moins à 80%. Pour faire fonctionner ce projet, il ne me manque que la fin des sessions, et refaire mes méthodes POST, PUT et DELETE pour la gestion des tâches.
Ayant revu la structure de la base de données, j'ai dû les recréer.

De plus, j'ai grandement manqué de temps, entre les 5 TP et projets concourants, et la maitrise approximative de certains outils (sessions, base de données).
# Repartition des taches
j'ai fini par devoir faire 100% des taches, mon binôme m'ayant quitté très rapidement pour faire son projet de son cote.
En revanche, il m'a quand même aide, entre autres sur la partie création des sessions.

# Axes d'amélioration
- Meilleure maitrise des technologies telles que les sessions ou les jwt
- Gestion de la priorite des projets.

<div align="right">Maxime Soulié</div>