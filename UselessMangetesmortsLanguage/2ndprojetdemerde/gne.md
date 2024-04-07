# diagramme cas d'Utilisation

- fournissseur :
    - ajouter produit
    - modifier produit
    - supprimer produit
    - consulter produit
        - consulter produit autre fournissseur ( --> extends)
        - afficher stats (--> includes)

- client :
    - ajouter article dans panier
        - specifier qtte
    - acheter panier
        - se connecter (<-- includes)
        - valider paiement (<-- includes) <- CME
    - passer reclamation
        - remboursement
        - retour

- admin :
    - gerer comptes fournissseur
    - gerer comptes clients
    - gerer reclamations
        - demander retour (includes --> retour)


