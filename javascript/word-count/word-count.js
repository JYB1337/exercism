//John Youngblood
//3-07-2015
var words = function (input)
{
    var output = {};
    var wordList = input.replace(/\s+/g, " ").split(" ");
    while (wordList.length > 0)
    {
        var temp = wordList.shift();
        output[temp] = 1;
        while(wordList.indexOf(temp) != -1)
        {
            wordList.splice(wordList.indexOf(temp),1)
            output[temp]++;
        }
    }
    return output;
}

module.exports = words;