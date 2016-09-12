const largestPrime = require("./largestPrime")

function processData(input) {
  let lines = input.split("\n");
  let n = +lines.shift();

  for (let i = 0; i < n; i++) {
    console.log(largestPrime(+lines.shift()));
  }
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