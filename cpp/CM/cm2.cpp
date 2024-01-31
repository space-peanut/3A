#include<fstream>
#include<iostream>
#include<string>
#include<vector>

using namespace std;

int main(int argc, char *argv[]){
    ifstream in_file;
    string filename {"../cm2"};
    ofstream out_file;
    out_file.open(filename, ios::app);
    if (out_file.is_open())
    {
        out_file<< "Dès qui a un spot a la télé qui me parle d'un canard\nJ'y vais, j'y vais\nDès qui a un spot a la télé qui me parle d'un canard\nJ'y vais, j'y vais\n\nRefrain:\nJe collectionne des canards ohoh\nJe collectionne des canards par millier\nJe collectionne des canards ohoh\nJe collectionne des canards vivants\nDès que je surf sur le web et qu' ebay vend un canard\nJ'achète, j'achète\nEt si quelqu'un surenchéri\nDardar je surenchéri, chéri\n\nRefrain:\nJe collectionne des canards ohoh\nJe collectionne des canards par milier\nJe collectionne des canards ohoh\nJe collectionne des canards vivants\nAnhanhanhanhanhanh\nJe sais que c'est impossible\nMais moi j'y crois\nJe sais que c'est impossible\nMais c'est comme ça\nJe désir aquérir tous les canards de la planète\nA vous les canraaards\nCoin coin coin coin coin coin coin coin coin etc...\nJe collectionne des canards (x4)\nNous collectionnons des canards (x7)\nVivants!\nCoin coin coin coin coin\n";
    }
    out_file.close();

    in_file.open(filename);
    string line;
    while (!in_file.eof()) {
        getline(in_file, line);
        cout << line << endl;
    }
    in_file.close();


    // string str {"\"node8\",\"node1\",\"node3\",\"node7\",\"node6\""};
    // vector<string> v;
    // string node;
    // signed int occ = str.find(",");
    // signed int occ2=0;
    // while (occ!=-1) {
    //     v.push_back(str.substr(occ2,occ));
    //     occ2 = occ+1;
    //     occ = str.find(",", occ2);
    //     if (occ==-1)
    //     {
    //         v.push_back(str.substr(occ2,str.size()));
    //     }
    //     
    // }
    //
    // for (string node : v) {
    //     cout << node << endl;
    // }
    //
    return 0;
}
