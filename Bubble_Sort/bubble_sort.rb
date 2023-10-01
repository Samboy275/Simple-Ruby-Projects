# frozen_string_literal: true

def bubble_sort(arr)
  puts arr.length
  (0..arr.length - 2).each do |i|
    (i + 1..arr.length - 1).each do |j|
      next unless arr[i] > arr[j]

      puts "#{arr[i]} #{arr[j]} befpre"
      temp = arr[i]
      arr[i] = arr[j]
      arr[j] = temp
      puts "#{arr[i]} #{arr[j]} #{temp} after"
    end
  end
  arr
end

test_array = [32, 54, 64, 35, 4, 30, 12]

puts bubble_sort(test_array)
