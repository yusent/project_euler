var assert = require("assert");
var largestPrime = require("./solution");

describe("largestPrime()", function () {
  it("should return its largest prime factor, case 1", function () {
    assert.equal(largestPrime(12), 3);
  });

  it("should return its largest prime factor, case 2", function () {
    assert.equal(largestPrime(144), 3);
  });

  it("should return its largest prime factor, case 3", function () {
    assert.equal(largestPrime(169), 13);
  });

  it("should return itself, if number is prime", function () {
    assert.equal(largestPrime(373), 373);
  });
});