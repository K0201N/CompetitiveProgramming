import * as fs from 'fs';

const input: number = parseInt(fs.readFileSync('/dev/stdin', 'utf8'))

const a: number = Math.floor(input/500);
const b: number = Math.floor(input%500);
const c: number = Math.floor(b/5);

console.log(a*1000 + c*5)
