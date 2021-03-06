#include <iostream>
#include <string>

using namespace std;

class Person {
    private:
        string name;
    public:
        Person(string name): name(name){}
        string getName(){
            return name;
        }
        void showName(){
            cout << "Name" << getName() << "\n";
        }
};

class Student: Person {
    private:
        int studentID;
    public:
        Student(int studentID, string name): Person(name){
            this->studentID = studentID;
        }
}