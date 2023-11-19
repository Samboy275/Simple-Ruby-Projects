


def merge_sort(arr)
  return arr if arr.length == 1
  sorted_array = Array.new(arr.length)
  index, pointer_1, pointer_2 = 0, 0, 0
  arr1 = merge_sort(arr[..(arr.length/2) - 1])
  arr2 = merge_sort(arr[arr.length/2..])
  while pointer_1 < arr1.length && pointer_2 < arr2.length
    if arr2[pointer_2] > arr1[pointer_1]
      sorted_array[index] = arr1[pointer_1]
      pointer_1 += 1
    else
      sorted_array[index] = arr2[pointer_2]
      pointer_2 += 1
    end
    index += 1
  end

  while pointer_2 < arr2.length
    sorted_array[index] = arr2[pointer_2]
    pointer_2 += 1
    index += 1
  end
  while pointer_1 < arr1.length
    sorted_array[index] = arr1[pointer_1]
    pointer_1 += 1
    index += 1
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
