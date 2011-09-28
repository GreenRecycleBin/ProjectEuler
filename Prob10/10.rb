#!/usr/bin/ruby

require "mathn"

sum = 0
puts Prime.each(2_000_000) {|prime| sum += prime}
