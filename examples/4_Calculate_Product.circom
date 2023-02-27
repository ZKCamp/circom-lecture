pragma circom 2.1.2;

// Correct implementation of CalculateProduct using immutable signals
template CalculateProduct (numItems) {
    signal input in[numItems];
    signal output out;

    signal product[numItems];

    product[0] <== in[0];

    for (var i = 1; i < numItems; i++) {
        product[i] <== in[i] * product[i-1];
    }
    out <== product[numItems - 1];
}
component main { public [ in ] } = CalculateProduct(10);
/* INPUT = {
    "in": [1, 2, 3, 4, 5, 6, 7, 8, 9, 10]
} */