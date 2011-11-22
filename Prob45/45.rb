#!/usr/bin/ruby -w

# Every hexagonal number is also triangle, therefore we can skip computing triangle numbers
# However, is this case we don't leave out triangle numbers because we want nice output

def triangleNumber(n)
  n * (n + 1) / 2
end

def pentagonNumber(n)
  n * (3 * n - 1) / 2
end

def hexagonNumber(n)
  n * (2 * n - 1)
end

triangle_n = pentagon_n = hexagon_n = 2
curr_triangle = triangleNumber(triangle_n)
curr_pentagon = pentagonNumber(pentagon_n)
curr_hexagon = hexagonNumber(hexagon_n)

n = 2 # The nth number that is triangle, pentagonal and hexgonal

while n > 0
  while curr_pentagon < curr_triangle
    pentagon_n += 1
    curr_pentagon = pentagonNumber(pentagon_n)
  end
  
  while curr_hexagon < curr_triangle
    hexagon_n += 1
    curr_hexagon = hexagonNumber(hexagon_n)
  end
  
  if curr_triangle == curr_pentagon && curr_triangle == curr_hexagon
    puts "T(%d) = P(%d) = H(%d) = %d" % [triangle_n, pentagon_n, hexagon_n, curr_triangle]
    n -= 1
    
    triangle_n += 1
    pentagon_n += 1
    hexagon_n += 1
  end

  triangle_n += 1
  curr_triangle = triangleNumber(triangle_n)
end
