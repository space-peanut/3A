#include<string>
#include<iostream>
#include <regex>
#include <vector>

using namespace std;

class Node{
    private:
        string name;
        signed int x;
        signed int y;
    public:
    Node(){}
        Node(string name, int x, int y){
            this->name = name;
            this->x = x;
            this->y = y;    
        };
        Node(string name){
            this->name = name;
        };
        string getName(){return name;};
        int getX(){return x;};
        int getY(){return y;};
        void print(){
            cout << name << " : (" << x << "," << y << ")" << endl;
        };
};
int getCode(string s)
{
    int code;
    (s=="\"Node\",,")?code=1:(regex_match(s,regex("\"Node[\\d]+\",[\\d]+,[\\d]+")))?code=2:(s=="\"traffic\",,")?code=3:(regex_match(s,regex("(\"Node[\\d]+\",)*\"Node[\\d]+\"")))?code=4:(s=="\"connection\",,")?code=5:code=6;
    return code;
};

Node extract(string s){
    Node node;
    if(getCode(s)==2){
        string name;
        int x;
        int y;
        int nameEnd = s.find_first_of('\",');
        name = s.substr(1,nameEnd-2);
        int xEnd = s.find_first_of(',',nameEnd+1);
        x = stoi(s.substr(nameEnd+1,xEnd-nameEnd-1));
        int yEnd = s.find_first_of('\0',xEnd+1);
        y = stoi(s.substr(xEnd+1,yEnd-xEnd-1));
        node = Node(name,x,y);
    }
    return node;
}

vector<Node> extractMultiple(string s){
    vector<Node> nodes;
    regex pattern=regex("Node[\\d]+");
    if(getCode(s)==4){
        smatch m;
        regex_match(s,m,pattern);
        for(string s : m){
            nodes.push_back(Node(s));
        }
    }
    return nodes;
}

int main(){
    cout << getCode("\"Node\",,") << endl;
    cout << getCode("\"Node1\",38,34") << endl;
    cout << getCode("\"traffic\",,") << endl;
    cout << getCode("\"Node1\",\"Node2\"") << endl;
    cout << getCode("\"connection\",,") << endl;
    cout << getCode("feur") << endl;

    Node n = extract("\"Node1\",38,34");
    n.print();
    vector<Node> nodes {extractMultiple("\"Node1\",\"Node2\",\"Node3\"")};

    for(Node n : nodes){
        n.print();
    }

    return 0;
}