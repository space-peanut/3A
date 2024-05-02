```javascript
/**
 * Permet de gérer l'affichage des tâches lors d'une sélection à l'aide du menu
 * @param {*} event 
 */
function filterTodo(event) //Filtrer les todos
{
    const taches = divcountry; //On récupere les div
    for (item of taches) { //On parcours les div
        switch (event.target.value) //Vérifier le filtre
        {
            case "all":
                item.style.display = "initial"; //Affiche la div
                break;
            case "amerique":
                if (item.childNodes[4].innerHTML == "Region : Americas") { //Si la region du pays est amerique
                    item.style.display = "initial"; //Afficher la div
                } else {
                    item.style.display = "none"; //Cacher la div
                }
                break;
            case "asie":
                if (item.childNodes[4].innerHTML == "Region : Asia") { //Si la region du pays est asie
                    item.style.display = "initial"; //Afficher la div
                } else {
                    item.style.display = "none"; //Cacher la div
                }
                break;
            case "europe":
                if (item.childNodes[4].innerHTML == "Region : Europe") { //Si la region du pays est europe
                    item.style.display = "initial"; //Afficher la div
                } else {
                    item.style.display = "none"; //Cacher la div
                }
                break;
            case "afrique":
                if (item.childNodes[4].innerHTML == "Region : Africa") { //Si la region du pays est afrique
                    item.style.display = "initial"; //Afficher la div
                } else {
                    item.style.display = "none"; //Cacher la div
                }
                break;
            case "oceanie":
                if (item.childNodes[4].innerHTML == "Region : Oceania") { //Si la region du pays est oceanie
                    item.style.display = "initial"; //Afficher la div
                } else {
                    item.style.display = "none"; //Cacher la div
                }
                break;
            case "antarctique":
                if (item.childNodes[4].innerHTML == "Region : Antarctic") { //Si la region du pays est antarctique
                    item.style.display = "initial"; //Afficher la div
                } else {
                    item.style.display = "none"; //Cacher la div
                }
                break;
        }
    }
}```