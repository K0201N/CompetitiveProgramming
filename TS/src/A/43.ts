import * as fs from 'fs';

const n: number = +fs.readFileSync('/dev/stdin', 'utf-8');

function result(n: number): number {
  let ans = 0
  for (let i = 0; i < n; i++) {
    ans += i+1;
  }
  return ans
}
console.log(result(n))
