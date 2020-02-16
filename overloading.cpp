
#include <iostream>
#include <string>

using namespace std;

// Function Over Loading

class Person
{
private:
    string name;

public:
    Person() { name = "uses"; }
    Person(string name) : name(name) {}

    // Operator Over Loading
    Person operator +(const Person& other) { return Person(name + "&" + other.name); }
    void showName() { cout << "Name: " << name << '\n'; }
};

int main(void)
{
    Person person1;

    Person person2("whoami");
    Person result = person1 + person2;
    result.showName();
   
}