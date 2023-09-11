#include <iostream>
#include "math_module.h"

int main() {
    int m, n;
    std::cout << "Enter m: ";
    std::cin >> m;
    std::cout << "Enter n: ";
    std::cin >> n;

    int k = calculateDifference(m, n);

    std::cout << "Difference of NOK and NOD: " << k << std::endl;

    return 0;
}
