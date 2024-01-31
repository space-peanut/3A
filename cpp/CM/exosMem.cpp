#include <iostream>
#include <ostream>

int main (int argc, char *argv[]) {
  int a {20};
  int b {10};
  int *ptr_a {&a};

  std::cout << "ptr_a= " << *ptr_a<< ", a=" << a << std::endl;
  ptr_a=&b;
  std::cout << "ptr_a= " << *ptr_a<< ", a=" << a << std::endl;
  *ptr_a=30;
  std::cout << "ptr_a= " << *ptr_a<< ", b=" << b << std::endl;
  return 0;
}
