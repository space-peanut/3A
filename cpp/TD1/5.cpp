#include<iostream>
#include<vector>
#include<numeric>
#include<algorithm>

using namespace std;

int main(int argc, char *argv[]){
    vector<double> v;
    double values;
    cout << "entrez plusieurs doubles (entrez un char pour arreter) : ";
    while (cin >> values){
        v.push_back(values);
    }

    //somme
    cout << "somme des valeurs : " << accumulate(v.begin(), v.end(), 0.0)<< endl;

    //affichage
    cout << "affichage des valeurs en sens inverse" << endl;
    for (auto it = v.rbegin(); it != v.rend(); ++it) {
        cout << *it << " ";
    }
    cout << endl<< endl;;   
    //tri
    cout << "affichage des valeurs triées" << endl;
    sort(v.begin(), v.end());
    for(double val : v){
        cout << val << ", ";
    }

    cout << endl;

    //produit matriciel
    cout << "produit matriciel" << endl;
    vector<vector<double>> v1 {vector<double> {1,2,3}, vector<double> {4,5,6}};
    vector<vector<double>> v2{vector<double> {1,2}, vector<double> {3,4}, vector<double> {5,6}};

    vector<vector<double>> result(v1.size(), vector<double>(v2[0].size(), 0));

    for (size_t i = 0; i < v1.size(); ++i) {
        for (size_t j = 0; j < v2[0].size(); ++j) {
            for (size_t k = 0; k < v1[0].size(); ++k) {
                result[i][j] += v1[i][k] * v2[k][j];
            }
        }
    }

    // print the result
    for (const auto& row : result) {
        for (const auto& element : row) {
            cout << element << " ";
        }
        cout << endl;
    } 

    return 0;
}