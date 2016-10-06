#include <iostream>

#define max (a > b ? (a > c ? a : c) : (b > c ? b : c))

int main() {

    using std::cin;
    using std::endl;
    using std::cout;

    unsigned int a, b, c;

    cout << "Podaj 3 nieujemne liczby calkowite: ";
    cin >> a;
    cin >> b;
    cin >> c;

    while (max) {
        cout << (a == max ? '*' : ' ')
             << (b == max ? '*' : ' ')
             << (c == max ? '*' : ' ')
             << endl;
        if (a == max) a--;
        if (b == max) b--;
        if (c == max) c--;
    }

}

