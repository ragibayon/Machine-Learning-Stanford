a = [1,2;
    5,2];

b=transpose(a)


if a(1,2)==b(2,1)
    fprintf('a = %.4f \nb = %.4f\n', a(1,2), b(2,1))
end