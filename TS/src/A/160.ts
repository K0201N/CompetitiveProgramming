import * as fs from 'fs';

const s: string[] = fs.readFileSync('/dev/stdin', 'utf8').trim().split('');
console.log(s[2]==s[3] && s[4]==s[5] ? 'Yes' : 'No');
