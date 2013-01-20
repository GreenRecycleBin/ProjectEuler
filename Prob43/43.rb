#!/usr/bin/ruby -w

class Pandigital
  @digits = (0..9).to_a
  @primes = [2, 3, 5, 7, 11, 13, 17]

  def self.all
    @digits.permutation(@digits.size)
  end

  def self.satisfy?(array)
    (2..8).each do |start|
      return false if array[start - 1, 3].join.to_i % @primes[start - 2] != 0
    end

    return true
  end
end

puts(
     Pandigital.all.reduce(0) do |sum, p|
       if p.first != 0 && Pandigital.satisfy?(p)
         sum + p.join.to_i
       else
         sum
       end
     end
     )
