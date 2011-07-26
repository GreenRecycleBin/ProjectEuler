#!/usr/bin/ruby

def gcd(a, b)
  if b == 0
    a
  else 
    gcd(b, a % b)
  end
end

def lcm(a, b)
  a / gcd(a, b) * b
end

puts (1..20).inject { |i, j| lcm(i, j) }