const x = [0.00000, 0.50000, 1.00000, 1.50000, 2.00000];
const y = [2.0000, 2.2474, 2.8415, 2.7781, 1.2432];

const lagrange = (px, py, x) => {
    // Interpola pela Formula de Lagrange
    // px e py: vetores contendo abscissas e ordenadas
    // x: onde interpolar

    let prod, sum = 0;
    let n = px.length; //Numero de pontos

    for (let i = 0; i < n; i++) {
        prod = 1;
        for (let j = 0; j < n; j++) {
            if (j !== i) {
                prod = prod * (x - px[j]) / (px[i] - px[j]);
            }
        }
        sum = sum + py[i] * prod;
    }

    return sum;

}

lagrange(x, y, 0.8);