# frozen_string_literal: true

# Fibonacci has methods to return an array of the first n fibonacci numbers using an
# iterative approach and using a recursive approach
class Fibonacci
  def fibs(num)
    return [] if num.zero?
    return [0] if num == 1

    (num - 2).times.reduce([0, 1]) { |fib_arr, _| fib_arr << fib_arr[-1] + fib_arr[-2] }
  end

  def fibs_rec(num)
    # puts 'This was printed recursively'
    return [] if num.zero?
    return [0] if num == 1
    return [0, 1] if num == 2

    fib_arr = fibs_rec(num - 1)
    fib_arr << fib_arr[-1] + fib_arr[-2]
  end
end

puts 'Iterative Fibonacci:'
10.times { |num| pp Fibonacci.new.fibs(num) }

puts ''

puts 'Recursive Fibonacci:'
10.times { |num| pp Fibonacci.new.fibs_rec(num) }

puts ''

puts 'The first 8 Fibonacci numbers are:'
p Fibonacci.new.fibs_rec(8)
