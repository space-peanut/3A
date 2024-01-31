#include <iostream>
#include <regex>
#include <string>

#ifndef NODE_H
#define NODE_H
class Node {
private:
  std::string name;
  signed int x;
  signed int y;

public:
  Node() {}
  Node(std::string name, int x, int y) {
    this->name = name;
    this->x = x;
    this->y = y;
  };
  Node(std::string name) { this->name = name; };
  std::string getName() { return name; };
  int getX() { return x; };
  int getY() { return y; };
  void print() {
    std::cout << name << " : (" << x << "," << y << ")" << std::endl;
  };

  int getCode(std::string s);
};

#endif
