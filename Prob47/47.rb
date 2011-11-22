#!/usr/bin/ruby -w

require 'mathn'

# n consecutive numbers each of which have n distinct prime factors
num_consecutive = 4

start, result = 1, nil
while true
  chain_size = 0
  
  num_consecutive.times do |i|
    if (start + i).prime_division.size == num_consecutive
      chain_size += 1
    else
      break
    end
  end
  
  if chain_size == num_consecutive
    puts start
    break
  else
    start += chain_size + 1
    chain_size = 0
  end
end
  