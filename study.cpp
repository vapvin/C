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

class Dob: Dog{
private:
    int birthday;
public:
    Dob(int birthday, string name, int legs): Dog(name, legs){
        this->birthdate = birthday;
    }
    void show(){
        cout << "Birthday" << birthday << "\n";
        cout << "DogName" << getName() << "\n";
        cout << "Dog Legs" << getLegs() << "\n";
    }
};

int main(void) {
    Dob dob(0712, "lin");
    dob.show();
    system("pause");
}