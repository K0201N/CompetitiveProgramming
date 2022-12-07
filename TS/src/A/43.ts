import * as fs from 'fs';

const n: Number = +fs.readFileSync('/dev/stdin', 'utf-8');

function result(n: Number): Number {
  let ans = 0
  for (let i = 0; i < n; i++) {
    ans += i+1;
  }
  return ans
}
console.log(result(n))
