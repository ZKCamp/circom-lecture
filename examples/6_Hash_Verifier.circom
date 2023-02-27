pragma circom 2.1.2;

include "circomlib/poseidon.circom";

template HashVerifier () {
    signal input in;
    signal input hashed;
    
    component hash = Poseidon(1);
    hash.inputs[0] <== in;

    hashed === hash.out;
}

component main = HashVerifier();

/* INPUT = {
    "in": "5",
    "hashed": "19065150524771031435284970883882288895168425523179566388456001105768498065277"
} */