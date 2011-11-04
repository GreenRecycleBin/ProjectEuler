#!/usr/bin/ruby -w

def numTermsOfSequence(start)
  num_terms = 1

  until start == 1
    num_terms += 1

    if start.even?
      start /= 2
    else
      start = 3 * start + 1
    end
  end

  num_terms
end

max = 0
max_start = 1

(1...1_000_000).each do |num|
  num_terms = numTermsOfSequence(num)

  max_start = num and max = num_terms if num_terms > max
end

p max_start
