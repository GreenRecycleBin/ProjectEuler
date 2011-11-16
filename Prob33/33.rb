#!/usr/bin/ruby -w

numerator, denominator = 1, 1

(10..98).each do |i|
  ((i / 10)..9).each do |jt|
    jt *= 10
    (1..9).each do |jo|
      j = jt + jo
      next if i >= j
      if i % 10 == j / 10 && i.to_f / j == (i / 10).to_f / (j % 10)
        numerator *= i
        denominator *= j
      end
    end
  end
end

puts denominator / denominator.gcd(numerator)