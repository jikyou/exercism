// This is only a SKELETON file for the 'Robot Name' exercise. It's been
// provided as a convenience to get your started writing code faster.

export class Robot {

    constructor() {
        this._name = generateCode()
    }

    get name() {
        return this._name
    }

    reset() {
        this._name = generateCode()
    }
}

Robot.releaseNames = () => { };

// Linear congruential generator
let m = 676001;
let a = 1352003;
let c = 13;
let x = 1;

function lcg() {
    x = (a * x + c) % m;
    return x;
}

function numToLetter(num) {
    let letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    let index = num % 26;
    return letters[index];
}

function generateCode() {
    let code = "";
    code += numToLetter(lcg());
    code += numToLetter(lcg());
    code += lcg().toString().padStart(3, "0");
    return code;
}
