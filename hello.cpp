#include <iostream>

namespace A {
    void function() {
        std::cout << "A Namespace" << std::endl;
    }
}

namespace B {
    void function() {
        std::cout << "B Namespace" << std::endl;
    }
}

int main(void) {
    A::function();
    B::function();
}