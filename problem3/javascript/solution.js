function largestPrime(num) {
  let limit = Math.floor(Math.sqrt(num)) + 1;

  for (let i = 2; i < limit; i ++) {
    if (num % i == 0) return largestPrime(num / i);
  }

  return num;
}

module.exports = largestPrime;