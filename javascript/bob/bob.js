//John Youngblood
//3-09-2015

var Bob = function () { };

Bob.prototype.hey = function (input) {

    var output = "Whatever.";

    if (input === input.toUpperCase() && input !== input.toLowerCase())
        output = "Whoa, chill out!";
    else if (input.charAt(input.length - 1) === '?')
        output = "Sure."
    else if (input.trim() === "")
        output = "Fine. Be that way!"
    return output;
};

module.exports = Bob;