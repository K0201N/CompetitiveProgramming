import * as fs from 'fs';

const input: string = fs.readFileSync('/dev/stdin', 'utf-8')
const [n, k, x, y]: number[] = input.trim().split('\n').map(Number)

function result([n, k, x, y]: number[]): number {
  let ans: number = 0
  for (let i = 0; i < n; i++) {
    i+1 <= k ? ans += x : ans += y
  }
  return ans
}
console.log(result([n, k, x, y]))
