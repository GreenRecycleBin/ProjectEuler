#!/usr/bin/ruby -w

range = (2..100)
power = []

range.each do |i|
  range.each do |j|
    power << i ** j
  end
end

puts power.uniq.size
