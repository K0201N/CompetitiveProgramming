import * as fs from 'fs';

const input = fs.readFileSync("/dev/stdin", "utf8").trim().split('');
if (new Set(input).size == 1) {
    console.log('Won')
} else {
    console.log('Lost')
}
