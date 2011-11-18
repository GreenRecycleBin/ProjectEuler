#!/usr/bin/ruby -w

require 'mathn'
require 'set'

def getCircular(n)
  n_s = n.to_s
  size = n_s.size
  
  circulars = [n]
  
  (size - 1).times do
    tmp = n_s[0]
    next_s = n_s[1, size] + tmp
    if next_s.to_i != n_s.to_i
      circulars << next_s.to_i
      n_s = next_s
    end
  end
  
  circulars
end

primes = Set.new()
Prime.each { |p| break if p >= 1_000_000; primes << p }

count = 0
primes.each do |p|
  circulars = getCircular(p)
  
  isCircular = true
  circulars.each do |n|    
    if !primes.include?(n)
      isCircular = false
      break
    end
    
    primes.delete(n)
end
  
  if isCircular
    count += circulars.size 
    p circulars
  end
end

puts count
    