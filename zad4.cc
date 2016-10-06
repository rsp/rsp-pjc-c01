#include <iostream>

#if defined(POL) && defined(ENG)
    #error "Zdefiniuj albo POL lub ENG"
#endif

#if !defined(POL) && !defined(ENG)
    #error "Zdefiniuj POL lub ENG"
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

unsigned int sum(unsigned int a) {
    return a ? a%10 + sum(a/10) : 0;
}

int main() {

    using std::cin;
    using std::endl;
    using std::cout;

    unsigned int a, as, m = 0, ms = 0;

    do {
        cout << PROMPT;
        cin >> a;
        as = sum(a);
        if (as > ms) {
            m = a;
            ms = as;
        }
    } while (a != 0);
    cout << MAX << ms << FOR << m << endl;

}

