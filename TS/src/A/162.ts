import * as fs from 'fs';
const n: string[] = fs.readFileSync('/dev/stdin', 'utf8').trim().split('');

function result(n: string[]): string {
  return n.includes('7') ? 'Yes' : 'No'
}
console.log(result(n))
