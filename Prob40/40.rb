#!/usr/bin/ruby -w

fraction = ('1'..'1000000').to_a.join.chars.to_a

i, answer = 1, 1
while i <= 1_000_000
  answer *= fraction[i - 1].to_i
  i *= 10
end

puts answer