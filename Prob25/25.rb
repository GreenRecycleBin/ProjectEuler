#!/usr/bin/ruby -w

def fibonacci(n, table)
  return n if n < 2

  until table.size == n
    table << table[-2] + table[-1]
  end

  table.last
end

n, table = 0, [1, 1]
n = n.next until fibonacci(n, table).to_s.size == 1000

p n
