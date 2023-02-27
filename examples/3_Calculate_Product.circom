pragma circom 2.1.2;

include "circomlib/comparators.circom";

// The out signal assignment is replaced by arrow. Since numItems is 3 in
// this case, non-quadratic equation error is thrown

template CalculateProduct (numItems) {
    signal input in[numItems];

    signal output out;
    
    var product = 1;
    for (var i = 0; i < numItems; i++) {
        product *= in[i];
    }
    out <== product;
}
component main { public [ in ] } = CalculateProduct(3);
/* INPUT = {
    "in": [3, 2, 4]
} */