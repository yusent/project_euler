function findTripletProduct(n) {
  if (n % 2 == 0) {
    for (let c = Math.floor(n / 3) + 1; c < n - 2; c ++) {
      for (let b = Math.floor((n - c) / 2) + 1; b < c; b ++) {
        let a = n - c - b;

        if (a <= 0) {
          break;
        }

        if (Math.pow(a, 2) + Math.pow(b, 2) == Math.pow(c, 2)) {
          return a * b * c;
        }
      }
    }
  }

  return -1;
}

module.exports = findTripletProduct;
