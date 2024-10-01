# frozen_string_literal: true

# Fibonacci has methods to return an array of the first n fibonacci numbers using an
# iterative approach and using a recursive approach
class Fibonacci
  def fibs(num)
    return [] if num.zero?
    return [0] if num == 1
    return [0, 1] if num == 2

    2.upto(num - 1).reduce([0, 1]) { |fib_arr, fib_num| fib_arr << fib_arr[fib_num - 1] + fib_arr[fib_num - 2] }
  end

  def fibs_rec(num)
    return [] if num.zero?
    return [0] if num == 1
    return [0, 1] if num == 2

    fib_arr = fibs_rec(num - 1)
    fib_arr << fib_arr[num - 2] + fib_arr[num - 3]
  end
end

puts 'Iterative Fibonacci:'
10.times { |num| pp Fibonacci.new.fibs(num) }

puts ''

puts 'Recursive Fibonacci:'
10.times { |num| pp Fibonacci.new.fibs_rec(num) }
