var wordCount = require('../wordCount.js');

describe("wordCount", function() { //describe what you're testing (i.e. "wordCount")
  it("returns the number of words", function() {
    expect(wordCount('hello world')).toBe(2);
  });
});

describe("wordCount", function() { //describe what you're testing (i.e. "wordCount")
  it("returns the number of words even with multispace", function() {
    expect(wordCount('hello    world')).toBe(2);
  });
});