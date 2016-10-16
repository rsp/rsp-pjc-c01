#include <iostream>

int main() {
    using std::cin; using std::cout; using std::endl;
    char c;
    int l = 0, h = 1000000, a;
    cout << "Pomysl liczbe od 1 do 1000000" << endl;
    do {
        a = (l + h) / 2;
        cout << "Czy jest to " << a << " (y=tak, s=za mala, b=za duza) ? ";
        cin >> c;
        if (c == 'y') cout << "Pomyslana liczba to " << a << endl;
        else if (c == 's') l = a + 1;
        else if (c == 'b') h = a - 1;
    } while (cin && c != 'y');
}
