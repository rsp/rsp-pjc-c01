#include <iostream>

int main() {

    using std::cin;
    using std::endl;
    using std::cout;

    int l = 0, h = 1000000, a;
    char c;

    cout << "Pomysl liczbe od 1 do 1 000 000" << endl;

    do {
        a = (l + h) / 2;
        cout << "Czy jest to " << a << "? ";
        cin >> c;
        if (c == 's') l = a;
        else if (c == 'b') h = a;
    } while (c != 'y');

    cout << "Pomyslana liczba to " << a << endl;

}

