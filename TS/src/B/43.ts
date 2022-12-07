import * as fs from 'fs';

const s: string[] = fs.readFileSync('/dev/stdin', 'utf-8').trim().split('');

function result(s: string[]) {
  let ans: string[] = [];

  for (let i = 0; i < s.length; i++) {
    if (s[i] == '0') {
      ans.push('0')
    } else if (s[i] == '1') {
      ans.push('1')
    } else if (s[i] == 'B' && ans.length >= 1) {
      ans.pop()
    }
  }
  return ans.join('')
}

console.log(result(s))
