#include <iostream>
#include <string>

using namespace std;

class Charactor {
    private:
        string name;
        int ragePoint;
        int hp;
        int damage;
    public:
        Charactor(string name, int hp, int damage){
            this->name = name;
            this->ragePoint = 0;
            this->hp = hp;
            this->damage = damage;
        }
        void show() {
            cout << name << "[" << ragePoint << "]" << hp << " " << damage << "\n";
        }
};

int main(void) {
    Charactor charactor("Slime", 100, 5);
    charactor.show();
    return 0;
}