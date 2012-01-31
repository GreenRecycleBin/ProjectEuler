#!/usr/bin/ruby -w

dimension = 1001 

def sum_left_diagonal(dimension)
  limit, n, step, sum = dimension ** 2, 1, 4, 1

  while n != limit
    2.times do
      n += step
      sum += n
    end

    step += 4
  end

  sum
end

def sum_right_diagonal(dimension)
  limit, n, step, sum = dimension ** 2, 1, 2, 0

  while n < limit
    sum += n
    n += step
    step += 2
  end

  sum
end

# 1 is double-counted
puts sum_left_diagonal(dimension) + sum_right_diagonal(dimension) - 1
