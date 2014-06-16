
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

def quickSort(array)
  length = array.length

  if length <=1
    return array
  end

  # puts "--> ARRAY: #{array.inspect}"

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

  # puts "--> PIVOT: #{value}"
  # puts "------> LEFT: #{left.inspect}"
  # puts "------> RIGHT: #{right.inspect}"

  return quickSort(left) + [value] + quickSort(right)

end

def radixSort(array)
  array_copy = array

  numbers_of_passes = 0

  array.each do |x|
    num = x.abs.to_s.size
    if num > numbers_of_passes
      numbers_of_passes = num
    end
  end

  numbers_of_passes.times do |i|
    bucket = Array.new(20) {[]}
    puts bucket.inspect
    # bucket[1] << array_copy
    # puts bucket.inspect
    array.each do |n|
      # bucket_index = bucket[n]
      # puts bucket_index
      z = nil
      k = n.to_s.split('').map { |digit| z = digit.to_i }
      if n < 0 then
        z = -z;
      end
      bucket[z] = [z]
      puts bucket.flatten
      puts bucket.inspect
      #puts "NUMBER: #{n} LAST: #{z}"


      # k = n.to_s.split('').map { |digit| digit.to_i }
      # puts k
      # bucket.flatten
      # puts bucket.inspect
    end
  end

  return array_copy
end

a = [3, -6, 38, -666, 666, 0]
b = [-3, 3, 334, -232312, 2, 0]
y = [3, 43, 6, -9, 0, -300, 239, 49, -234, -123456789, 123456789012]
x = [9, -7, 0, 5]
puts quickSort(a).inspect


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
