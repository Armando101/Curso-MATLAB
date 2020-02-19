function s = factorial(n)
    if (n == 0) || (n == 1)
        s=1;
    else
        s=n*n*factorial(n-1);
    end
end