#include "Node.h"
#include <algorithm>
#include <fstream>
#include <iostream>
#include <iterator>
#include <map>
#include <ostream>
#include <regex>
#include <string>
#include <utility>
#include <vector>

unsigned int inf = 0 - 1;

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

  FILE *gnuplotPipe = popen("gnuplot -persist", "w");
  if (!gnuplotPipe) {
    std::cerr << "Error opening Gnuplot pipe." << std::endl;
  }

  fprintf(gnuplotPipe, "plot '%s' with linespoints title 'Data'\n",
          outPath.c_str());
  fflush(gnuplotPipe);

  pclose(gnuplotPipe);
}

void writeToMatrix(std::string inPath,
                   std::vector<std::vector<int>> &outMatrix) {
  std::map<std::string, std::pair<int, int>> nodes;

  std::ifstream in_file;
  in_file.open(inPath);

  std::string line;
  std::string state;

  while (!in_file.eof()) {
    getline(in_file, line);
    getCode(line) == 1   ? state = "NODE"
    : getCode(line) == 3 ? state = "TRAFFIC"
    : getCode(line) == 5 ? state = "CONNECTION"
                         : state = state;
    if (state == "NODE") {
      outMatrix.push_back(std::vector<int>{});
    }
    if (getCode(line) == 3) {
      outMatrix.pop_back();
      for (int i = 0; i < outMatrix.size(); i++) {
        outMatrix.at(i).resize(outMatrix.size());
      }
    }
    if (state == "CONNECTION" && getCode(line) == 6) {
      int name1End = line.find_first_of('\",');
      std::string name1 = line.substr(1, name1End - 2);
      std::string name2 =
          line.substr(name1End + 2, line.length() - name1End - 3);

      int node1 = stoi(name1.substr(4, name1.size()));
      int node2 = stoi(name2.substr(4, name2.size()));

      outMatrix.at(node1 - 1).at(node2 - 1) = 1;
      outMatrix.at(node2 - 1).at(node1 - 1) = 1;
    }
  }
}

std::vector<int> initDist(std::vector<std::vector<int>> matrix, int startNode) {
  std::vector<int> distance(matrix.size());
  for (int i = 0; i < distance.size(); i++) {
    i == startNode - 1 ? distance.at(i) = 0 : distance.at(i) = inf;
  }
}

// std::vector<std::string> djikstra(std::vector<std::vector<int>> adjMatrix,
// std::string start, std::string end){
//
//   return;
// }

int main(int argc, char *argv[]) {
  std::vector<std::vector<int>> adjMatrix{};
  writeToMatrix("./test-PMR_simple.csv", adjMatrix);
  for (const auto &row : adjMatrix) {
    for (const auto &element : row) {
      std::cout << element << " ";
    }
    std::cout << std::endl;
  }
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

  writeDat("./Examples/papillonavecnoeudinitialetterminalpardelegation.csv",
           "./pap.dat");

  return 0;
}
