#!/usr/bin/ruby

puts (1..20).inject { |i, j| i.lcm(j) }