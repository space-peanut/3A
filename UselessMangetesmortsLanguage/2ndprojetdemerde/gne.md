 
# Nom du cas : connexion
- Objectif : permet a un utilisateur de se connecter
- Acteurs : utilisateur
- Date :  09/04/24
- Responsables : M. Soulié
- Version : 1.0
- Début du cas d’utilisation : 
	- l'utilisaeur veut effectuer une action qui necessite une connection
- Fin du cas d’utilisation : 
	- l'utilisateur est connecter
- préconditions :
	- utilisateur deconnecte
- scenario nominal : 
	- l'utilisateur arrive sur le site
	- l'utilisateur veut se connecter
	- le systeme affiche une page de connections
	- l'utilisateur rentre les bons id et mot de passe
	- le systeme connecte l'utilisateur
- post conditions :
	- l'utilisateur est connecte

 
# Nom du cas : gerer son cataloguer
- Objectif : permet a un fournisseur de consulter, ajouter, editer ou supprimer un produit
- Acteurs : fournisseur
- Date :  09/04/24
- Responsables : M. Soulié
- Version : 1.0
- Début du cas d’utilisation : 
	- le fournisseur souhaite gerer son catalogue
- préconditions :
	- le fournisseur est connecte
 
# Nom du cas : supprimer un produit
- Objectif : le fournisseur supprime un produit de son catalogue
- Acteurs : fournisseur
- Date :  09/04/24
- Responsables : M. Soulié
- Version : 1.0
- Début du cas d’utilisation : 
	- le fournisseur veut supprimer un produit de son catalogue
- Fin du cas d’utilisation : 
	- le produit est supprime
- préconditions :
	- fournisseur connecte
- scenario nominal : 
	- le fournisseur signale un produit a supprimer
	- le systeme supprime le produit
	- le systeme signale au fournisseur que le produit est supprime
- post conditions :
	- le produit est supprime
 
# Nom du cas : modifier produit
- Objectif : le fournisseur modifie une ou plusieurs informations sur un produit
- Acteurs : 
- Date :  09/04/24
- Responsables : M. Soulié
- Version : 1.0
- Début du cas d’utilisation : 
	- le fournisseur veut modifier des informations sur un produit
- Fin du cas d’utilisation : 
	- le produit est modifie
- préconditions :
	- fournisseur connecte
- scenario nominal : 
	- le fournisseur signale un produit a supprimer
	- le systeme affiche une page de modification
	- le fournisseur edite les informations
	- le systeme enregistre les informations
	- le systeme signale au fournisseur que le produit est modifie
- post conditions :
	- le produit est modifie
 
# Nom du cas : consulter produit
- Objectif : le fournisseur veut consulter un de ses produits
- Acteurs : fournisseur
- Date :  09/04/24
- Responsables : M. Soulié
- Version : 1.0
- Début du cas d’utilisation : 
	- le fournisseur veut consulter les informations d'un produit
- préconditions :
	- fournisseur connecte
 
# Nom du cas : consulter produit autre fournisseur
- Objectif : le fournisseur veut consulter un produit d'un autre fournisseur
- Acteurs : fournisseur
- Date :  09/04/24
- Responsables : M. Soulié
- Version : 1.0
- Début du cas d’utilisation : 
	- le fournisseur veut consulter les informations d'un produit d'un autre fournisseur
- préconditions :
	- fournisseur connecte
 
# Nom du cas : envoyer produit
- Objectif : envoyer un produit a un client
- Acteurs : fournisseur (principal), client (secondaire), CME (secondaire)
- Date :  09/04/24
- Responsables : M. Soulié
- Version : 1.0
- Début du cas d’utilisation : 
	- un client a paye son panier
- Fin du cas d’utilisation : 
	- le produit est envoyé
- préconditions :
	- le paiement est valide
- post conditions :
	- le produit est envoyé
 
# Nom du cas : renvoyer produit
- Objectif : le fournisseur renvoie un produit suite a une réclamation 
- Acteurs : fournisseur (principal), admin (secondaire), client (secondaire)
- Date :  09/04/24
- Responsables : M. Soulié
- Version : 1.0
- Début du cas d’utilisation : 
	- le fournisseur est informe qu'il doit renvoyer un produit
- Fin du cas d’utilisation : 
	- le client accuse reception
- préconditions :
	- l'admin a informe le fournisseur
	- le fournisseur est connecte
- scenario nominal : 
	- l&admin signale un produit a renvoyer
	- le fournisseur renvoie le produit
	- le client accuse reception
- post conditions :
	- le produit est renvoye
	- le client accuse reception
 
# Nom du cas : gerer comptes
- Objectif : permet a un admin de gerer les comptes
- Acteurs : admin
- Date :  09/04/24
- Responsables : M. Soulié
- Version : 1.0
- Début du cas d’utilisation : 
	- l'admin veut gerer les comptes
- préconditions :
	- admin connecte

 
# Nom du cas : gerer comptes fournisseurs
- Objectif : permet a un admin de gerer les comptes fournisseurs
- Acteurs : admin
- Date :  09/04/24
- Responsables : M. Soulié
- Version : 1.0
- Début du cas d’utilisation : 
	- l'admin veut gerer les comptes fournisseurs
- préconditions :
	- admin connecte 

 
# Nom du cas : gerer comptes clients
- Objectif : permet a un admin de gerer les comptes clients
- Acteurs : admin
- Date :  09/04/24
- Responsables : M. Soulié
- Version : 1.0
- Début du cas d’utilisation : 
	- l'admin veut gerer les comptes clients
- préconditions :
	- admin connecte 

 
# Nom du cas : gerer reclamations
- Objectif : permet a un admin de gerer les reclamations
- Acteurs : admin (principal), fournisseur (secondaire), client (secondaire)
- Date :  09/04/24
- Responsables : M. Soulié
- Version : 1.0
- Début du cas d’utilisation : 
	- un client a fait une reclamation
- Fin du cas d’utilisation : 
	- le produit est rembourse ou renvoye
- préconditions :
	- admin connecte
	- client a fait une reclamation
- scenario nominal : 
	- l'admin consulte la reclamation
	- l'admin notifie le fournisseur
	- le fournisseur renvoie le produit
	- le client accuse reception
	- la reclamation est fermee
-scenario alternatif :
	- l'admin consulte la reclamation
	- l'admin rembourse le client
	- le client accuse reception
	- la reclamation est fermee
- post conditions :
	- le client est rembourse ou le produit est renvoye
	- le client accuse reception

 
# Nom du cas : informer fournisseur
- Objectif : permet a un admin d'informer un fournisseur d'un retour
- Acteurs : admin (principal), fournisseur (secondaire)
- Date :  09/04/24
- Responsables : M. Soulié
- Version : 1.0
- Début du cas d’utilisation : 
	- un client a fait une reclamation d'echange
- Fin du cas d’utilisation : 
	- le fournisseur est informe
- préconditions :
	- admin connecte
	- client a fait une reclamation d'echange
- scenario nominal : 
	- l'admin consulte la reclamation
	- l'admin notifie le fournisseur

# Nom du cas : rembourser
- Objectif : permet a un admin de rembourser un client
- Acteurs : admin (principal), client (secondaire)
- Date :  09/04/24
- Responsables : M. Soulié
- Version : 1.0
- Début du cas d’utilisation : 
	- un client a fait une reclamation de retour
- Fin du cas d’utilisation : 
	- le client est rembourse
- préconditions :
	- admin connecte
	- client a fait une reclamation de retour
- scenario nominal : 
	- l'admin consulte la reclamation
	- l'admin rembourse le client
- post conditions :
	- le client est rembourse
 
# Nom du cas : gerer panier
- Objectif : permet a un client de gerer son panier
- Acteurs : client
- Date :  09/04/24
- Responsables : M. Soulié
- Version : 1.0
- Début du cas d’utilisation : 
	- le client veut gerer son panier
 
# Nom du cas : ajouter produit
- Objectif : permet a un client d'ajouter un produit a son panier
- Acteurs : client
- Date :  09/04/24
- Responsables : M. Soulié
- Version : 1.0
- Début du cas d’utilisation : 
	- le client veut ajouter un produit a son panier
- Fin du cas d’utilisation : 
	- le produit est ajoute
- scenario nominal : 
	- le client signale un produit a ajouter
	- le systeme ajoute le produit
	- le systeme signale au client que le produit est ajoute
- post conditions :
	- le produit est ajoute au panier
 
# Nom du cas : supprimer produit
- Objectif : permet a un client de supprimer un produit de son panier
- Acteurs : client
- Date :  09/04/24
- Responsables : M. Soulié
- Version : 1.0
- Début du cas d’utilisation : 
	- le client veut supprimer un produit de son panier
- Fin du cas d’utilisation : 
	- le produit est supprime
- préconditions :
	- il y a un produit dans le panier
- scenario nominal : 
	- le client signale un produit a supprimer
	- le systeme supprime le produit
	- le systeme signale au client que le produit est supprime
- post conditions :
	- le produit est supprime du panier
 
# Nom du cas : modifier produit
- Objectif : permet a un client de modifier la quantite d'un produit dans son panier
- Acteurs : client
- Date :  09/04/24
- Responsables : M. Soulié
- Version : 1.0
- Début du cas d’utilisation : 
	- le client veut modifier la quantite d'un produit dans son panier
- Fin du cas d’utilisation : 
	- la quantite est modifiee
- préconditions :
	- il y a un produit dans le panier
- scenario nominal : 
	- le client signale un produit a modifier
	- le systeme affiche une page de modification
	- le client edite la quantite
	- le systeme enregistre la quantite
- post conditions :
	- la quantite est modifiee
 
# Nom du cas : payer
- Objectif : permet a un client de payer son panier
- Acteurs : client
- Date :  09/04/24
- Responsables : M. Soulié
- Version : 1.0
- Début du cas d’utilisation : 
	- le client veut payer son panier
- Fin du cas d’utilisation : 
	- le panier est paye
- préconditions :
	- il y a au moins un produit dans le panier
- scenario nominal : 
	- le client signale qu'il veut payer
	- le systeme affiche une page de paiement
	- le client rentre les informations de paiement
	- le systeme transmet les informations a la CME
	- la CME valide le paiement
	- le systeme signale au client que le paiement est valide
- post conditions :
	- le paiement est valide
 
# Nom du cas : reclamer
- Objectif : permet a un client de faire une reclamation
- Acteurs : client
- Date :  09/04/24
- Responsables : M. Soulié
- Version : 1.0
- Début du cas d’utilisation : 
	- le client veut faire une reclamation
- Fin du cas d’utilisation : 
	- la reclamation est prise en compte
- préconditions :
	- le client a achete au moins un produit
	- le client est connecte
- scenario nominal : 
	- le client signale qu'il veut faire une reclamation
	- le systeme affiche une page de reclamation
	- l'admin gere la reclamation
	- le client accuse reception
 
# Nom du cas : retour
- Objectif : Reclamation de retour (remboursement)
- Acteurs : client (principal), admin (secondaire)
- Date :  09/04/24
- Responsables : M. Soulié
- Version : 1.0
- Début du cas d’utilisation : 
	- le client veut faire une reclamation de retour
- Fin du cas d’utilisation : 
	- le client est rembourse
- préconditions :
	- le client a fait une reclamation
- scenario nominal : 
	- le client signale qu'il veut faire une reclamation de retour sur un produit
	- l'admin gere la reclamation
	- le client accuse reception du remboursement
- post conditions :
	- le client est rembourse


# Nom du cas : echange
- Objectif : Reclamation d'echange
- Acteurs : client (principal), admin (secondaire), fournisseur (secondaire)
- Date :  09/04/24
- Responsables : M. Soulié
- Version : 1.0
- Début du cas d’utilisation : 
	- le client veut faire une reclamation d'echange
- Fin du cas d’utilisation :
	- le produit est renvoye
- préconditions :
	- le client a fait une reclamation
- scenario nominal :
	- le client signale qu'il veut faire une reclamation d'echange sur un produit
	- l'admin gere la reclamation
	- le fournisseur renvoie le produit
	- le client accuse reception du produit
- post conditions :
	- le produit est renvoye
	- le client accuse reception du produit


# Nom du cas : accuser reception
- Objectif : permet a un client d'accuser reception d'un produit
- Acteurs : client
- Date :  09/04/24
- Responsables : M. Soulié
- Version : 1.0
- Début du cas d’utilisation : 
	- le client veut accuser reception d'un produit
- Fin du cas d’utilisation :
	- le client a accuse reception
- préconditions :
	- le client a fait une reclamation
- scenario nominal :
	- le client signale qu'il veut accuser reception d'un produit
	- le client accuse reception
- post conditions :
	- la reclamtion est fermee

# Nom du cas : valider paiement
- Objectif : permet a la CME de valider un paiement
- Acteurs : CME
- Date :  09/04/24
- Responsables : M. Soulié
- Version : 1.0
- Début du cas d’utilisation : 
	- un client a paye son panier
- Fin du cas d’utilisation :
	- le paiement est valide
- préconditions :
	- le client a paye
- scenario nominal :
	- le systeme transmet les informations a la CME
	- la CME valide le paiement
	- la CME envoie une facture au client
- post conditions :
	- le paiement est valide
	- le client recoit une facture


