function S = simpson(fx, a, b, m)
    % Retorna a integral "fx", de "a" ate "b" com "m" subintervalos,
    % pela formula do 1/3 de Simpson: h/3*(y0 + 4y1+ 2y2 +...+4yn-1 + yn)
    if mod(m, 2) == 1 % se "m" for par, torna-o impar.
        m = m + 1;
    end
    h = (b - a)/m;
    S = fx(a) + fx(b); %extremos y0 e yn
    c = 4;
    for i = 1:m-1 % m+1 pontos: 2 externos e m-1 internos
        S = S + c * fx(a + i * h);
        if c == 4
            c = 2;
        else
            c = 4;
        end
    end
    S  = h / 3 * S;
end
