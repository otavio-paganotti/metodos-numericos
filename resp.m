function [resp] = intlag(x, y, xint)
    % "x" e "y": vetor de abscissas e ordenadas
    % "xint": valor ou vetor de valores a interpolar
    resp = zeros(size(xint));
    n = length(x);
    for i=1:n
        produto = ones(size(xint));
        for j=1:n
            if j != i
                produto = produto .* (xint-x(j))./(x(i)-x(j));
            endif
        endfor
        resp = resp + y(i) * produto;
    endfor
end