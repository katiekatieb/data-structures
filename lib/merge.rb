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
  array2 = []
  until left.empty? == true || right.empty? == true
    if left[0] <= right[0]
      array2.push(left.shift)
    else
      array2.push(right.shift)
    end
  end
  array2 + left + right
end


f = File.open("input.txt")
array = Array.new
f.each_line { |line| array << line.to_i }


require 'benchmark'
puts "MERGE SORT"
puts Benchmark.measure { mergeSort(array) }

