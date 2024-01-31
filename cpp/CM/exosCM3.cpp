
#include <fstream>
#include<iostream>
#include <ostream>
#include<string>
#include <utility>
#include<vector>

void AfficherTexte(std::ifstream &in_file, const std::string &filename){
    
    std::string line;
    std::string lines;
    while (!in_file.eof()) {
      getline(in_file, line);
      std::cout << line << std::endl;
    }
    in_file.close();
}

void swap(int &a, int &b){
  int c;
  c=a;
  a=b;
  b=c;
}

void f(int a, const int b, int* c, int &d, const int &e, int g=6 ){
  a=1;
  *c=3;
  d=4;
  std::cout << "g="<< g << std::endl;
}

int main (int argc, char *argv[]) {
 
  int x = 10;
  int y = 20;
  // swap(x,y);
  // std::cout << x << " , " < y;
  int a{};
  int b{};
  int c{};
  int d{};
  int e{};
  int g{};
  
 
  f(a,b,&c,d,e);
  std::cout << "a=" << a <<",b=" << b <<",c=" << c <<",d=" << d <<",e=" << e <<",g=" << g <<std::endl;
  f(a,b,&c,d,e,g);
  std::cout << "a=" << a <<",b=" << b <<",c=" << c <<",d=" << d <<",e=" << e <<",g=" << g <<std::endl;
  return 0;
}
