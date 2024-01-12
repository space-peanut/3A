#include <iostream>

using namespace std;

int main(int argc, char *argv[]){
    cout << "entrez un nombre : ";
    int value;
    cin >> value;
    cout << value+1;

    int valInt;
    double valDouble;
    string valString;
    cout << endl << "entrez un entier, un double et un str : ";

    cin >> valInt >> valDouble >> valString;
    cout << valInt << " " << valDouble << " " << valString << endl;

    return 0;
}