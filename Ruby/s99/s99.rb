def last(l)
  l.last
end

def penultimate(l)
  l[-2]
end

def nth(n, l)
  l[n]
end

def length(l)
  l.length
end

def reverse(l)
  l.reverse
end

def isPalindrome(l)
  (1..(l.length / 2)).each do |i|
    return false unless l[i-1] == l[-i]
  end
  true
end

def flatten(l)
  l.flatten
end

def compress(l)
  l.inject([]) do |res, e|
  res.last == e ? res : res << e
  end
end

def pack(l)
  l.group_by(&:itself).values
end

def pack(l)
  l.inject([]) do |res, e|
    if res.last&.last == e
      res.last << e
    else
      res << [e]
    end
    res
  end
end

def encode(l)
  l.group_by(&:itself).map{ |key, value| [key, value.count]}
end

# P10
# pack(l).map{|x| [x.count, x.first]}

# P11
def encodeModified(l)
  any = pack(l).map{|x| [x.count, x.first]}
  any.map do |x|
    if x.first < 2
    x[1]
    else
      x
    end
  end
end

# P12
def decode(l)
  l.map do|x|
    [x[1]] * x.first
  end.flatten
end

# P13
def encodeDirect(l)
  sym = nil
  count = nil
  res = []
  l.each do |i|
    if sym == i
      count += 1
    else
      res << [count, sym] if sym
      sym = i
      count = 1
    end
  end
  res
end

# P14
def duplicate(l)
  l.map{|i| [i]*2}.flatten
end

# P15
def duplicateN(n, l)
  l.map{|i| [i]*n}.flatten
end

# P16
def drop(n, l)
  l.delete_at(n)
  return l
end

# P17
def split(n, l)
  l.each_slice(n).to_a
end

# P18
def slice(n, x, l)
  l[n..x]
end

# P19
def rotate(n, i, l)
  l.rotate(n)
  l.rotate(i)
end

# P20
def removeAt(a, l)
  b = l.delete_at(a)
  [l, b]
end

# P21
def insertAt(a, n, l)
  l.insert(n, a)
end

# P22
def range(a, b)
  (a..b).to_a
end

# P23
def randomSelect(n, l)
  # scala> randomSelect（3、List（ 'a、' b、 'c、' d、 'f、' g、 'h））
  # res0：List [Symbol] = List（' c、 'd、' a）
  l.sample(n)
end

# P24
def lotto(n, m)
  (1..m).to_a.sample(n)
end

# P25
def randomPermute(l)
  l.shuffle
end

def randomPermute(l)
  randomSelect(l.length, l)
end

# P26
def combinations(n, l)
  l.combination(n).to_a
end

# P27_1
def group3(x, y, l)
  l.combination(x).map do |group1|
    (l - group1).combination(y).map do |group2|
      [group1, group2, l - group1 - group2]
    end
  end.flatten(1)
end

# P27_2
def group(group_size, l)
  raise if group_size.sum != l.length

  def gen_sub_group(fixed, gs, member)
    return [[*fixed, member]] if gs.length == 1

    n, *lest = gs
    member.combination(n).map do |sub_group|
      gen_sub_group([*fixed, sub_group], lest, member - sub_group)
    end.flatten(1)
  end

  return gen_sub_group([], group_size, l)
end
