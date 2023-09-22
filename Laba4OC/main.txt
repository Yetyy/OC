#include <iostream>
#include "calculation.h"




int main() {
    setlocale(LC_ALL, "Russian");
    int m, n;
    std::cout << "Введите числа m и n(m-где ищем n-что ищем): ";
    std::cin >> m >> n;
    std::cout <<"\nВ " << calculate(m, n) <<" степени числа " <<m<<" содержится число " <<n<< '\n';

    return 0;
}
