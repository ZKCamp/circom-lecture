pragma circom 2.1.2;
include "circomlib/comparators.circom";

// Implementation of IndexOf using Quin Selector
template IndexOf (numItems) {
    signal input in[numItems];
    signal input index;

    signal output out;

    component comp[numItems];

    signal outItems[numItems + 1];
    outItems[0] <== 0;
    
    for (var i = 0; i < numItems; i++) {
        comp[i] = IsEqual();

        comp[i].in[0] <== i;
        comp[i].in[1] <== index;

        outItems[i + 1] <== comp[i].out * in[i] + outItems[i];
    }
    out <== outItems[numItems];
}
component main { public [ in, index ] } = IndexOf(10);
/* INPUT = {
    "in": [0, 8, 4, 6, 7, 4, 2, 1, 8, 5],
    "index": 3
} */