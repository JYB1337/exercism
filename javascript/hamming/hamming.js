//John Youngblood
//03/10/2015
var compute = function (first, second)
{
	var count = 0;
	if(first.length != second.length)
		throw 'DNA strands must be of equal length.';

	for (i = 0; i<first.length; i++ )
	{
		if (first.charAt(i) != second.charAt(i))
			count++;
	}
	return count;
}

exports.compute = compute;