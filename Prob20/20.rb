#!/usr/bin/ruby

num = (1..100).inject(1, :*)
sum = 0
num.to_s.each_char {|digit| sum += digit.to_i}
puts sum
