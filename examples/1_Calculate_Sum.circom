pragma circom 2.1.2;

include "circomlib/comparators.circom";

// Calculate sum using "variable"
template CalculateSum (numItems) {
    signal input in[numItems];

    signal output out;
    
    var sm = 0;
    for (var i = 0; i < numItems; i++) {
        sm += in[i];
    }
    out <== sm;
}
component main { public [ in ] } = CalculateSum(5);
/* INPUT = {
    "in": [1, 2, 3, 4, 5]
} */