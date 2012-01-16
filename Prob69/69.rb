#!/usr/bin/ruby -w

# φ(n) = n . ∏(p|n) (1 - 1 / p)
# A number n that minimizes φ(n) is the product of as many small primes as possible

require 'mathn'

limit, n = 1_000_000, 1
Prime.each { |p| if n * p > limit then break else n *= p end }
puts n