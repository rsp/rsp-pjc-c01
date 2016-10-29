// PJC-C01/Z04 by Rafał Pocztarski - https://pocztarski.com/

#include <iostream>

#if defined(POL) == defined(ENG)
    #error "Zdefiniuj albo POL lub ENG"
#endif

#ifdef POL
    #define PROMPT "Podaj liczbe naturalna (0 - koniec): "
    #define MAX "Najwieksza suma cyfr to "
    #define FOR " dla "
#endif

#ifdef ENG
    #define PROMPT "Enter a natural number (0 - done): "
    #define MAX "Max sum of digits is "
    #define FOR " for "
#endif

unsigned s(unsigned a) {
    return a ? a % 10 + s(a / 10) : 0;
}

int main() {
    using std::cin; using std::cout; using std::endl;
    int a, as, m = 0, ms = 0;
    while (cout << PROMPT, cin >> a, cin && a > 0) {
        as = s(a);
        if (as > ms) {
            m = a;
            ms = as;
        }
    }
    cout << MAX << ms << FOR << m << endl;
}
