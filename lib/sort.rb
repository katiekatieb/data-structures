
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
  puts "--> ARRAY: #{array.inspect}"
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
    puts "----> ARRAY2: #{array2.inspect}"
  end
  array2 + left + right
end

y = [3, 43, 6, -9, 0, -300, 239, 3329, -234, 33423]
x = [9, -7, 0, 5]
puts mergeSort(x).inspect


test = Array.new(100) { rand(1000) }

# # uno = mergeSort(test).inspect
# # two = insertionSort(test).inspect

# # if uno == two
# #   puts "YES"
# # else
# #   puts "NO"
# # end

# require 'benchmark'
# puts Benchmark.measure { mergeSort(test) }
# puts Benchmark.measure { insertionSort(test) }


























# def bogo(array)
#   until array == mergeSort(array)
#     if array != mergeSort(array)
#       array.shuffle
#     end
#   end
# end
