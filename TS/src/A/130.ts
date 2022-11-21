import * as fs from 'fs';

const [x, a] = fs.readFileSync('/dev/stdin', 'utf-8').trim().split(' ');
console.log(a > x ? 0 : 10)