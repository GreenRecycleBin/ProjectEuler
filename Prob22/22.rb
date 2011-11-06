#!/usr/bin/ruby -w

def asciiValue(name)
  sum = 0
  name.each_char { |char| sum += char[0].ord - 'A'.ord + 1 }

  sum
end

sum, counter = 0, 1
sorted_names = nil

File.open('names.txt', 'r') do |file|
  sorted_names = file.gets.split(',').map! { |name| name[1..-2] }.sort
end

sorted_names.each_index do |i|
  sum += asciiValue(sorted_names[i]) * i.next
end

p sum
