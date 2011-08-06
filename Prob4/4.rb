#!/usr/bin/ruby

=begin
The palindrome can be written as:
  abccba = mn
> 11(9091a + 910b + 100c) = mn
> 11 * num = mn
> 11 * 10 < m < 11 * 90

Find the first combination of a, b, c (a: 9 -> 1; b, c: 9 -> 0) such that num % m == 0 and n = num / m <= 999.
=end

9.downto(1) { |a| 
  9.downto(0) { |b|
    9.downto(0) { |c|
      num = 9091 * a + 910 * b + 100 * c
      90.downto(11) { |m|
        if num % m == 0 and num / m <= 999
          puts num * 11
          exit(0)
        end
      }
    }
  }
}