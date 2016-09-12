function processData(input) {
  let lines = input.split("\n");
  let t = +lines.shift();

  for (let i = 0; i < t; i ++) {
    let n = +lines.shift();
    console.log(findTripletProduct(n));
  }
}

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

process.stdin.resume();
process.stdin.setEncoding("ascii");
_input = "";
process.stdin.on("data", function (input) {
    _input += input;
});

process.stdin.on("end", function () {
   processData(_input);
});

module.exports = findTripletProduct;