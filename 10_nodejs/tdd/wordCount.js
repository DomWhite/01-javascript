var wordCount = function(str) {
	string = str.replace(/\s{2,}/g, ' ');
	count = string.split(" ").length;
	return count;
}

module.exports = wordCount;