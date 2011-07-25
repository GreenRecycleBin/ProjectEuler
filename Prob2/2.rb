#!/usr/bin/ruby

def finbonacciUpto(n)
  i1, i2 = 1, 1
  while i1 <= n
    yield i1
    i1, i2 = i2, i1 + i2
  end
end

sum = 0
finbonacciUpto(4E6 - 1) { |i| sum += i if i.even? }
puts sum
