#!/usr/bin/ruby

num = 2**1000
sum = 0
num.to_s.each_char {|digit| sum += digit.to_i}
puts sum
