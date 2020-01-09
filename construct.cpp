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
        Charactor(string name, int hp, int damage) : name(name), ragePoint(0), hp(hp), damage(damage) { }
        Charactor(const Charactor& other){
            name = other.name;
            ragePoint = other.ragePoint;
            hp = other.hp;
            damage = other.damage;
        }
        void pointUp() {
            ragePoint++;
        }
        void show() {
            cout << name << "[" << ragePoint << "]" << hp << " " << damage << "\n";
        }
};

int main(void) {
    Charactor charactor1("Slime", 100, 5);
    charactor1.pointUp();
    Charactor charactor2(charactor1);
    charactor2.pointUp();
    charactor1.show();
    charactor2.show();
    return 0;
}