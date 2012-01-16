#!/usr/bin/ruby -w

denominators = [1, 2, 5, 10, 20, 50, 100, 200]
target = 200
ways = [1] + [0] * target

denominators.each do |denominator|
  (denominator..target).each do |i|
    ways[i] += ways[i - denominator]
  end
end

puts ways[target]
