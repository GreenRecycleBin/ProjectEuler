#!/usr/bin/ruby -w

class Triangle
  attr_accessor :triangles, :n
  
  def initialize
    @triangles = []
    @n = 0
  end
  
  def next_limit(limit)
    until !@triangles.empty? && @triangles.last >= limit do
      @n = @n.next
      triangle = n * (n + 1) / 2
      @triangles << triangle
    end
  end

  def include?(n)
    self.next_limit(n) if @triangles.empty? || @triangles.last < n

    @triangles.include?(n)
  end

  def self.value(word)
    value = 0
    word.each_codepoint { |v| value += v - 'A'[0].ord + 1 }
    value
  end
end

File.open("words.txt") do |file|
  triangle_factory = Triangle.new
  words = file.gets.split(',').map! { |s| s[1...s.size - 1] }
  
  puts words.count { |word| triangle_factory.include?(Triangle.value(word)) }
end
