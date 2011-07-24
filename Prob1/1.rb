#!/usr/bin/ruby

sum = 0
1_000.times { |i| sum += i if i % 3 == 0 or i % 5 == 0 }
puts sum
