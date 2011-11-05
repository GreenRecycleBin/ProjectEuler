#!/usr/bin/ruby

sum = 0
(1..100).inject(:*).to_s.each_char { |digit| sum += digit.to_i }
p sum
