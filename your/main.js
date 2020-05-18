const getRandomValue = () => {
    return Math.random() * 50 + 1;
}

const val = getRandomValue();
console.log(Math.round(val));
console.log(Math.floor(val));

const numArr = [];

for(i = 0; i < 5; i++){
    numArr[i] = Math.floor(getRandomValue());
}

console.log(numArr);