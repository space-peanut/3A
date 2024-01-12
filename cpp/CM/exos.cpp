#include <iostream>
#include <vector>


using namespace std;

int main(){
    int tab[2][2]{{0,1},{2,3}};
    cout << tab[0][0]<<endl;
    cout << tab[0][1]<<endl;
    cout << tab[1][0]<<endl;
    cout << tab[1][1]<<endl;
    cout << &tab[0][0]<<endl;
    cout << &tab[0][1]<<endl;
    cout << &tab[1][0]<<endl;
    cout << &tab[1][1]<<endl;

    cout << "vector"<<endl;

    vector<int> vect {0,1,2,3,4};
    cout << vect[0]<<endl;
    cout << vect[1]<<endl;
    cout << vect[2]<<endl;
    cout << vect[3]<<endl;
    cout << vect[4]<<endl;

    vect.push_back(5);

    cout << endl << vect[5]<<endl;

    cout << endl << "arithmetique"<<endl;

    int a {15};
    int b {2};  

    cout <<(double) a/b <<endl;
    
    cout << endl << "ternaire"<<endl;

    return 0;
}