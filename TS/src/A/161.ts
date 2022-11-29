import * as fs from 'fs';

const [a, b, c]: string[] = fs.readFileSync('/dev/stdin', 'utf-8').trim().split(' ');

console.log([c, a, b].join(' '))
