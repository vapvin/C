#include <iostream>
#include <string>

using namespace std;

template <typename T = int>
class Data {
    private:
        T data;
    public:
        Data(T data) : data(data){ }
        void setDate(T data) { this->data = data; }
        T getData() { return data; }
};

int main(void){
    Data<int> data1(1);
    Data<string> data2("Vins");
    cout << data1.getData() << ":" << data2.getData() << "\n";
}