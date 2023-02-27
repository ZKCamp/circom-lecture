pragma circom 2.1.2;

include "circomlib/comparators.circom";

// Calculate product using "variable", no use of arrow while assigning
// "out" gives an error. Here numItems = 2, so the code works and does not
// throw non-quadratic equation error

template CalculateProduct (numItems) {
    signal input in[numItems];

    signal output out;
    
    var product = 1;
    for (var i = 0; i < numItems; i++) {
        product *= in[i];
    }
    out = product;
}
component main { public [ in ] } = CalculateProduct(2);
/* INPUT = {
    "in": [3, 2]
} */