#include <iostream>

main() {
    using std::cin;
    using std::endl;
    using std::cout;

    double wzrost, waga;

    cout << "Podaj wzrost [m]" << endl;
    cin >> wzrost;
    cout << "Podaj wage [kg]" << endl;
    cin >> waga;
    cout << "BMI = " << (waga / wzrost / wzrost) << endl;
}
