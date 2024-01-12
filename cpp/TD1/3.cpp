#include <iostream>
#include <cmath>
#include <iomanip>
using namespace std;

int main() {
    cout << "Taille de int : " << sizeof(int) << " octets" << endl 
    << "Taille de short : " << sizeof(short) << " octets" << endl 
    << "Taille de float : " << sizeof(float) << " octets" << endl 
    << "Taille de double : " << sizeof(double) << " octets" << endl 
    << "Taille de long double : " << sizeof(long double) << " octets" << endl;
    long double pi = 3.14159265358979323846264338327950288419716939937510582;
    cout<< setprecision(99) << endl << "Valeur de pi : " << pi << endl<< endl;

    int minInt = numeric_limits<int>::min();  // INT_MIN
    int maxInt = numeric_limits<int>::max();  // INT_MAX

    signed int INT_MIN = numeric_limits<int>::min();
    signed int INT_MIN_MOINS1 = numeric_limits<int>::min()-1;
    signed int INT_MAX = numeric_limits<int>::max();
    signed int INT_MAX_PLUS1 = numeric_limits<int>::max()+1;

    cout << "INT_MIN : " << INT_MIN << endl
    << "INT_MIN-1 : " << INT_MIN_MOINS1 << endl
    << "INT_MAX : " << INT_MAX << endl
    << "INT_MAX+1 : " << INT_MAX_PLUS1 << endl<< endl;

    long double LDBL_MIN = numeric_limits<long double>::min();
    long double LDBL_MIN_MOINS1 = numeric_limits<long double>::min()-1;
    long double LDBL_MAX = numeric_limits<long double>::max();
    long double LDBL_MAX_PLUS1 = numeric_limits<long double>::max()+1;

    cout << "LDBL_MIN : " << LDBL_MIN << endl
    << "LDBL_MIN-1 : " << LDBL_MIN_MOINS1 << endl
    << "LDBL_MAX : " << LDBL_MAX << endl
    << "LDBL_MAX+1 : " << LDBL_MAX_PLUS1 << endl;
    
    return 0;
}
