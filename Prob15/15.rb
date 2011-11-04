#!/usr/bin/ruby -w

def factorial(num)
  (1..num).inject(:*)
end

n = 20
p factorial(2 * n) / (factorial(n) ** 2)
