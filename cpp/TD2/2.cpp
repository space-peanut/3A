#include "Node.h"
#include <fstream>
#include <iostream>
#include <iterator>
#include <map>
#include <ostream>
#include <regex>
#include <string>
#include <utility>
#include <vector>

// class Node {V
// private:
//   std::string name;
//   signed int x;
//   signed int y;
//
// public:
//   Node() {}
//   Node(std::string name, int x, int y) {
//     this->name = name;
//     this->x = x;
//     this->y = y;
//   };
//   Node(std::string name) { this->name = name; };
//   std::string getName() { return name; };
//   int getX() { return x; };
//   int getY() { return y; };
//   void print() {
//     std::cout << name << " : (" << x << "," << y << ")" << std::endl;
//   };
// };
//
int getCode(std::string s) {
  int code;
  (s == "\"Node\",,")                                                ? code = 1
  : (regex_match(s, std::regex("\"Node[\\d]+\",[\\d]+,[\\d]+")))     ? code = 2
  : (s == "\"traffic\",,")                                           ? code = 3
  : (regex_match(s, std::regex("\"Node[\\d]\",\"Node[\\d]\"")))      ? code = 6
  : (regex_match(s, std::regex("(\"Node[\\d]+\",)*\"Node[\\d]+\""))) ? code = 4
  : (s == "\"connection\",,")                                        ? code = 5
                                                                     : code = 7;
  return code;
};

Node extract(std::string s) {
  Node node;
  if (getCode(s) == 2) {
    std::string name;
    int x;
    int y;
    int nameEnd = s.find_first_of('\",');
    name = s.substr(1, nameEnd - 2);
    int xEnd = s.find_first_of(',', nameEnd + 1);
    x = stoi(s.substr(nameEnd + 1, xEnd - nameEnd - 1));
    int yEnd = s.find_first_of('\0', xEnd + 1);
    y = stoi(s.substr(xEnd + 1, yEnd - xEnd - 1));
    node = Node(name, x, y);
  }
  return node;
}

void writeDat(std::string inPath, std::string outPath) {
  std::map<std::string, std::pair<int, int>> nodes;

  std::ifstream in_file;
  in_file.open(inPath);

  std::ofstream out_file;
  out_file.open(outPath);

  std::string line;
  std::string state;

  while (!in_file.eof()) {
    getline(in_file, line);
    getCode(line) == 1   ? state = "NODE"
    : getCode(line) == 3 ? state = "TRAFFIC"
    : getCode(line) == 5 ? state = "CONNECTION"
                         : state = state;

    if (state == "NODE" && getCode(line) == 2) {
      Node node = extract(line);
      out_file << node.getX() << " " << node.getY() << std::endl;
      nodes[node.getName()] = std::make_pair(node.getX(), node.getY());
    }
    if (getCode(line) == 3) {
      out_file << std::endl;
    }
    if (state == "CONNECTION" && getCode(line) == 6) {
      int name1End = line.find_first_of('\",');
      std::string name1 = line.substr(1, name1End - 2);
      std::string name2 =
          line.substr(name1End + 2, line.length() - name1End - 3);
      std::cout << name1 << " " << name2 << std::endl;

      int x1 = nodes[name1].first;
      int y1 = nodes[name1].second;

      int x2 = nodes[name2].first;
      int y2 = nodes[name2].second;

      out_file << x1 << " " << y1 << std::endl;
      out_file << x2 << " " << y2 << std::endl << std::endl;
    }
  }
  in_file.close();
  out_file.close();
}

void writeToMatrix(std::string inPath,
                   std::vector<std::vector<bool>> &outMatrix) {
  
}

int main(int argc, char *argv[]) {
  std::vector<std::vector<bool>> adjMatrix;

  // std::ifstream in_file;
  // std::string filename{"./test-PMR_simple.csv"};
  //
  // in_file.open(filename);
  // std::ofstream out_file;
  // out_file.open("./TD2/res.txt");
  // std::string line;
  // while (!in_file.eof()) {
  //   getline(in_file, line);
  //   int code = getCode(line);
  //   std::cout << line << " code : " << code << std::endl;
  //   if (out_file.is_open()) {
  //     out_file << "Type : " << code << " , " << line << std::endl;
  //   }
  // }
  // in_file.close();
  // out_file.close();

  writeDat("./test-PMR_simple.csv", "./res.dat");

  return 0;
}
