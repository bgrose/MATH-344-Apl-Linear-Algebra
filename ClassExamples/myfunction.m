% Evaluate function x^2 + x + 1

function y = mydot(u, v)
    y = 0;
    n = length(v);
    for i = 1:n
        y = v(i)*u(i) + y
    end
end