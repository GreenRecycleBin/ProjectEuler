#!/usr/bin/ruby -w

# From 0 to 19
digit = [4, 3, 3, 5, 4, 4, 3, 5, 5, 4, 3, 6, 6, 8, 8, 8, 7, 9, 8, 8]

# 20, 30, ..., 90 
decade = [nil, 3, 6, 6, 5, 5, 5, 7, 6, 6]

count = (1..1000).inject(0) do |sum, n|
  sum, n = sum + 11, n % 1000 if n > 999 # 11 for 'thousand and'
  sum, n = sum + digit[n / 100] + (n % 100 > 0 ? 10 : 7), n % 100 if n > 99 # 10 or 7 for 'hundred' w/wo 'and'
  sum, n = sum + decade[n / 10], n % 10 if n > 19
  sum += digit[n] if n > 0

  sum
end

puts count
