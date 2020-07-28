const readline = require('readline');
const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

let input = [];
let firstArr = [];

let result = "";
rl.on('line', function (line) {
    input.push(line)
  })
  .on('close', function () {
		firsArr = input[0].split(' ');
		let secArr = new Array(firsArr[0]*1)
		let thirArr = new Array(firsArr[1]*1)
		secArr = input[1].split(' ');
		thirArr = input[2].split(' ');
		secArr.push(...thirArr);
		secArr.sort((a,b) => a - b);
		for(i = 0; i < secArr.length; i++){
			result += secArr[i] + " ";
		}
		console.log(" ")
    console.log(result);
    process.exit();
});