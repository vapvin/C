#include <iostream>
#include <string>

using namespace std;

class Student {
    private:
        int studentId;
        string name;
    public:
        Student(int studentId, string name): studentId(studentId), name(name) {}
        friend Student operator +(const Student &studentm, const Student &other){
            return Student(student.studentId, student.name + "&" + other.name);
        }
        void showName() { cout<< "Name: " << name << 'n'; }
};

int main(void) {
    Student student(1, 'else');
    Student result = student + student;
    result.showName();
}