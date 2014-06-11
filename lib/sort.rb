
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
  length = array.length
  if length <= 1
    return array
  else
    x = length/2
    left = mergeSort(array[0...x])
    right = mergeSort(array[x..length])
    merge(left, right)
  end
end

def merge(left, right)
  later_array = []
  until left.empty? == true || right.empty? == true
    if left[0] <= right[0]
      later_array.push(left.shift)
    else
      later_array.push(right.shift)
    end
  end
  later_array+left+right
end

# x = [3, 43, 6, -9, 0, -300, 239, 3329, -234, 33423, 0]
# puts mergeSort(x).inspect


# test = Array.new(100000) { rand(1000) }

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
