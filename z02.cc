#include <iostream>

#if !(defined(GETMAX) || defined(GETMIN))
    #error "Zdefiniuj GETMAX i/lub GETMIN"
#endif

int main() {

    using std::cin;
    using std::endl;
    using std::cout;

    double a, b, c;

    cout << "Podaj 3 liczby" << endl;
    cin >> a;
    cin >> b;
    cin >> c;

    #ifdef GETMAX
    cout << "MAX: "
         << (a > b ? (a > c ? a : c) : (b > c ? b : c))
         << endl;
    #endif

    #ifdef GETMIN
    cout << "MIN: "
         << (a < b ? (a < c ? a : c) : (b < c ? b : c))
         << endl;
    #endif

}

