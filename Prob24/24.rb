#!/usr/bin/ruby -w

def factorial(n)
  (1..n).inject(1, :*)
end

# Factoradic: http://en.wikipedia.org/wiki/Factoradic

def convertToFactoradic(n, bases)
  size = bases.size
  digits = Array.new(size)

  (size - 1).downto(0).each do |i|
    digits[size - 1 - i] = n / bases[size - 1 - i]
    n %= bases[size - 1 - i]
  end

  digits
end

def convertFromFactoradic(factoradic)
  digits = (0...factoradic.size).to_a
  num = Array.new(factoradic.size)

  i = 0
  until digits.empty?
    num[i] = digits[factoradic[i]]
    digits.delete_at(factoradic[i])
    i = i.next
  end

  num.to_s.to_i
end


size = 10
bases = Array.new(size) { |i| factorial(size - 1 - i) }
factoradic = convertToFactoradic(1_000_000 - 1, bases)

p convertFromFactoradic(factoradic)

