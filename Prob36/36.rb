#!/usr/bin/ruby -w

def convertToBase(base, num)
  num_s = []
  
  begin
    tmp = num % base
    
    if base >= 11
      tmp = ('A'.ord + (tmp - 10)).chr
    else
      tmp = tmp.to_s
    end
      
    num_s << tmp
    
    num /= base
  end while num > 0
  
  num_s.reverse!.inject { |s, i| s << i }
end

def isPalindrome(s)
  s == s.reverse
end

nums = (0...1_000_000).select do |n|
  n_base2 = convertToBase(2, n)
  isPalindrome(n.to_s) && isPalindrome(n_base2)
end

puts nums.inject(:+)