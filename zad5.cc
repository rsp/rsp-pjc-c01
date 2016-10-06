#include <iostream>

int main() {

    int l = 0, h = 1000000, a;
    char c;

    std::cout << "Pomysl liczbe od 1 do 1 000 000" << std::endl;
    do {
        a = (l + h) / 2;
        std::cout << "Czy jest to " << a << "? ";
        std::cin >> c;
        if (c == 's') l = a;
        else if (c == 'b') h = a;
        else if (c == 'y')
            std::cout << "Pomyslana liczba to " << a << std::endl;
    } while (std::cin && c != 'y');

}

