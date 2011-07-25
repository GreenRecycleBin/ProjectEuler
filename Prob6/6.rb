#!/usr/bin/ruby

sumOfSquares, squareOfSum = 0, 0
101.times { |i| sumOfSquares += i ** 2; squareOfSum += i }
squareOfSum **= 2
puts squareOfSum - sumOfSquares
