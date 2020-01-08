#include <iostream>
#include <string>

using namespace std;

int main(void) {
    string input;
    getline(cin, input);
    for(int i = 0; i < input.size(); i++){
        cout << input[i] << endl;
    }

    return 0;
}