#include "math_module.h"

int calculateNOD(int a, int b) {
    while (b != 0) {
        int temp = b;
        b = a % b;
        a = temp;
    }
    return a;
}

int calculateNOK(int a, int b) {
    return (a * b) / calculateNOD(a, b);
}

int calculateDifference(int m, int n) {
    int nok = calculateNOK(m, n);
    int nod = calculateNOD(m, n);

    return nok - nod;
}
