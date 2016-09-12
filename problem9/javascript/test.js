var assert = require("assert");
var findTripletProduct = require("./solution");

describe("findTripletProduct()", function () {
  it("Should return the maximum product when finds a triplet", function () {
    assert.equal(findTripletProduct(12), 60);
  });

  it("Should return -1 when there's no triplet", function () {
    assert.equal(findTripletProduct(4), -1);
  });
});