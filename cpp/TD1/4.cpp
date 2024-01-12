#include <iostream>
#include<map>
#include<string>
using namespace std;

int main(int argc, char *argv[]){
    enum Week  {LUNDI, MARDI, MERCREDI, JEUDI, VENDREDI, SAMEDI, DIMANCHE};
    Week day;
    int value;
    cout << "entrez un nombre entre 1 et 7 : ";
    cin >> value;
    day = static_cast<Week>(value-1);
    switch (day)
    {
        case LUNDI:
            cout << "LUNDI" << endl;
            break;
        case MARDI:
            cout << "MARDI" << endl;
            break;
        case MERCREDI:
            cout << "MERCREDI" << endl;
            break;
        case JEUDI:
            cout << "JEUDI" << endl;
            break;
        case VENDREDI:
            cout << "VENDREDI" << endl;
            break;
        case SAMEDI:
            cout << "SAMEDI" << endl;
            break;
        case DIMANCHE:
            cout << "DIMANCHE" << endl;
            break;
        default:
            cout << "ERROR" << endl;
            break;
    }
    return 0;
}
