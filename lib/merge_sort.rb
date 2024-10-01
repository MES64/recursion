# frozen_string_literal: true

# MergeSort has a recursive method to sort an array of numbers using merge sort
class MergeSort
  def merge_sort(arr)
    return arr if arr.length < 2

    left_arr = merge_sort(arr[0...arr.length / 2])
    right_arr = merge_sort(arr[arr.length / 2..])
    merge(left_arr, right_arr)
  end

  private

  def merge(left_arr, right_arr)
    merged_arr = []
    until left_arr.empty? || right_arr.empty?
      merged_arr << (left_arr.first <= right_arr.first ? left_arr.shift : right_arr.shift)
    end
    merged_arr.concat(left_arr, right_arr)
  end
end

arr1 = [3, 2, 1, 13, 8, 5, 0, 1]
arr2 = [105, 79, 100, 110]

puts "Before sort: #{arr1}"
puts "After sort: #{MergeSort.new.merge_sort(arr1)}"

puts "Before sort: #{arr2}"
puts "After sort: #{MergeSort.new.merge_sort(arr2)}"
