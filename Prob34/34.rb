#!/usr/bin/ruby -w

def factorial(n)
  (1..n).inject(1, :*)
end

def getMaxBound()
  n = 1
  factorial_9 = factorial(9)
  
  while true do
    break if factorial_9 * n < 10 ** (n + 1) - 1
    n = n.next
  end
  
  n
end

def sumFactorialDigits(n)
  n.to_s.chars.inject(0) { |sum, char| sum + factorial(char.to_i) }
end

nums =  (3HH..10 ** getMaxBound() - 1).select do |n|
  n == sumFactorialDigits(n)
end

puts nums.inject(:+)