


def merge_sort(arr)
  return arr if arr.length == 1
  puts '=' * 10
  print arr
  puts
  puts '*' * 10
  sorted_array = Array.new(arr.length)
  pointer_1 = 0
  pointer_2 = 0
  arr1 = merge_sort(arr[..(arr.length/2) - 1])
  print arr1
  puts
  puts '*' * 10
  arr2 = merge_sort(arr[arr.length/2..])
  print arr2
  puts
  puts '*' * 10
  for i in 0..arr.length - 1
    if arr2[pointer_2] > arr1[pointer_1]
      sorted_array[i] = arr1[pointer_1]
      pointer_1 += 1
    else
      sorted_array[i] = arr2[pointer_2]
      pointer_2 += 1
    end
    if pointer_1 >= arr1.length
      while pointer_2 < arr2.length
        i += 1
        sorted_array[i] = arr2[pointer_2]
        pointer_2 += 1
      end
      break
    elsif pointer_2 >= arr2.length
      while pointer_1 < arr1.length
        i += 1
        sorted_array[i] = arr1[pointer_1]
        pointer_1 += 1
      end
      break
    end
  end
  return sorted_array
end


arr = Array.new()

10.times do
  arr.push(rand(100))
end



sorted_array = merge_sort(arr)

print sorted_array
puts
