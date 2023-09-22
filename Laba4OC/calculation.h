int calculate(int m, int n,int x=1,int k=0) {
    bool res = false;
    while (m < 1000000 && !res) {
        x = m * x;
        ++k;
        int tmp = x;
        while (tmp > 0 && !res)
        {
            if (tmp % 10 == n || tmp == n)
                res = true;
            tmp /= 10;
        }
        if (!res)
            calculate(m, n, x, k);
    }
    if (res) return k;
    else return -1;
    }
