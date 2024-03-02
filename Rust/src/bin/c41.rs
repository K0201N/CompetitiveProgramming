use proconio::input;
use std::collections::HashMap;

fn main() {
  input! {
    n: usize,
    array: [i32; n],
  }

  let mut hash: HashMap<i32, usize> = HashMap::new();
  for (i, &a) in array.iter().enumerate() {
    hash.insert(a, i + 1);
  }

  let mut sorted_array: Vec<i32> = array.clone();
  sorted_array.sort_by(|a, b| b.cmp(a));

  for a in sorted_array.iter() {
    println!("{}", hash[a]);
  }
}
