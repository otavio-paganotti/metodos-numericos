function [y, x, fxy] = euler(a, b, m, y0, f)
    % Calcula y(b), pelo método de Euler, a partir do PVI dy/dx = f(x,y),
    % Com y(a) = y0, usando "m" subintervalos no intervalo [a, b].
    % "y": solução; "x" : a + i * (b-a)/m; "fxy": f(x,y)
    h = (b-a)/m;
    x(1)= a;
    y(1)= y0;
    for i=1:m
        fxy(i)= f(x(i), y(i));
        x(i+1) = a + i * h;
        y(i+1) = y(i) + h * f(x(i), y(i));
    end
    fxy(m+1)= f(x(m+1), y(m+1));
end