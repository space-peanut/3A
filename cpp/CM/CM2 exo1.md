
#include <iostream>

using namespace std;

int main()
{
    int tab[5]{0,1,2,3,4};
    cout << tab[0];

    return 0;
}
----

#include <iostream>

using namespace std;

int main()
{
    int tab[2][2]{{0,1},{2,3}};
    cout << tab[0][0]<<endl;
    cout << tab[0][1]<<endl;
    cout << tab[1][0]<<endl;
    cout << tab[1][1]<<endl;
    cout << &tab[0][0]<<endl;
    cout << &tab[0][1]<<endl;
    cout << &tab[1][0]<<endl;
    cout << &tab[1][1]<<endl;

    return 0;
}

----
