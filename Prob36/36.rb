#!/usr/bin/ruby -w

def convertToBase(base, num)
  num_digits = Math.log(num).div(Math.log(base)) + 1
  num_s = Array.new(num_digits)
  
  (num_digits - 1).downto(0).each do |i|
    tmp = num % base
    
    if base >= 11
      tmp = ('A'.ord + (tmp - 10)).chr
    else
      tmp = tmp.to_s
    end
      
    num_s[i] = tmp
    
    num /= base
  end
  
  num_s
end

def isPalindrome(s)
  s == s.reverse
end

nums = (1...1_000_000).select do |n|
  isPalindrome(n.to_s) && isPalindrome(convertToBase(2, n))
end

puts nums.inject(:+)