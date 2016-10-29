// PJC-C01/Z03 by Rafał Pocztarski - https://pocztarski.com/

#include <iostream>

int main() {

    using std::cin;
    using std::endl;
    using std::cout;

    unsigned int a = 0, b = 0, c = 0;
    auto max = [&a, &b, &c] () {
        return (a > b ? (a > c ? a : c) : (b > c ? b : c));
    };

    cout << "Podaj 3 nieujemne liczby calkowite: ";
    cin >> a;
    cin >> b;
    cin >> c;

    while (auto m = max()) {
        cout << (a == m ? --a, '*' : ' ')
             << (b == m ? --b, '*' : ' ')
             << (c == m ? --c, '*' : ' ')
             << endl;
    }

}
