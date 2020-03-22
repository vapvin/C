#include <iostream>
#include <string>

using namespace std;

class Dog {
private:
    string name;
    int legs;
public:
    Dog(string name, int legs): name(name) {}, legs(legs){}
    string getName(){
        return name
    }
    int getLegs(){
        return legs;
    }
    void showName(){
        cout << "Name :" << getName() << "\n";
    }
};
