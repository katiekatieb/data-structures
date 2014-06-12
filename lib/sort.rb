
def insertionSort(array)
  (1...array.length).each do |x|
    value = array.delete_at(x)
    index = x
    while index > 0 && value < array[index - 1]
      index -= 1
    end
    array.insert(index, value)
  end
  return array
end

def mergeSort(array)
  #puts "--> ARRAY: #{array.inspect}"
  length = array.length
  if length <= 1
    return array
  else
    x = length/2
    left = mergeSort(array[0...x])
    right = mergeSort(array[x..length])
    #puts "BEFORE MERGE LEFT: #{left.inspect} RIGHT: #{right.inspect}"
    merge(left, right)
  end
end

def merge(left, right)
  array2 = []
  until left.empty? == true || right.empty? == true
    if left[0] <= right[0]
      #puts "IF LEFT: #{left.inspect} RIGHT: #{right.inspect}"
      array2.push(left.shift)
    else
      #puts "ELSE LEFT: #{left.inspect} RIGHT: #{right.inspect}"
      array2.push(right.shift)
    end
    #puts "----> ARRAY2: #{array2.inspect}"
  end
  array2 + left + right
end

def quicksort(array)
  return array if array.length <= 1

  pivot_index = (array.length / 2).to_i
  pivot_value = array[pivot_index]
  array.delete_at(pivot_index)

  lesser = Array.new
  greater = Array.new

  array.each do |x|
    if x <= pivot_value
      lesser << x
    else
      greater << x
    end
  end

  return quicksort(lesser) + [pivot_value] + quicksort(greater)
end

def quickSort(array)
  length = array.length

  if length <=1
    return array
  end

  puts "--> ARRAY: #{array.inspect}"

  half = length/2
  index = half.to_i
  value = array[index]
  array.delete_at(index)
  left = []
  right = []

  array.each do |x|
    if x <= value
      left.push(x)
    else
      right.push(x)
    end
  end

  puts "--> PIVOT: #{value}"
  puts "------> LEFT: #{left.inspect}"
  puts "------> RIGHT: #{right.inspect}"

  return quickSort(left) + [value] + quickSort(right)

end


y = [3, 43, 6, -9, 0, -300, 239, 3329, -234, -33423]
x = [9, -7, 0, 5]
puts quickSort(y).inspect


# test = Array.new(100000) { rand(1000) }

# # uno = mergeSort(test).inspect
# # two = insertionSort(test).inspect

# # if uno == two
# #   puts "YES"
# # else
# #   puts "NO"
# # end

# require 'benchmark'
# puts "MERGE SORT"
# puts Benchmark.measure { mergeSort(test) }
# puts "INSERTION SORT"
# puts Benchmark.measure { insertionSort(test) }
# puts "QUICK SORT"
# puts Benchmark.measure { quickSort(test) }





















# def bogo(array)
#   until array == array.sort
#     if array != array.sort
#       array.shuffle
#     end
#   end
# end
