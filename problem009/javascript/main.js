const findTripletProduct = require("./solution");

function processData(input) {
  let lines = input.split("\n");
  let t = +lines.shift();

  for (let i = 0; i < t; i ++) {
    let n = +lines.shift();
    console.log(findTripletProduct(n));
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
