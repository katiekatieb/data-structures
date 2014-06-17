class Array

  def insertionSort
    array = self
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

  def mergeSort
    array = self
    length = array.length
    if length <= 1
      return array
    else
      x = length/2
      left = (array[0...x]).mergeSort
      right = (array[x..length]).mergeSort
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

  def quickSort
    array = self
    length = array.length

    if length <=1
      return array
    end

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

    return left.quickSort + [value] + right.quickSort
  end

  def radixSort
    array_copy = self

    numbers_of_passes = 0

    array_copy.each do |x|
      num = x.abs.to_s.size
      if num > numbers_of_passes
        numbers_of_passes = num
      end
    end

    numbers_of_passes.times do |i|
      buckets = Array.new(20) { [] }
      num = 10**i

      array_copy.each do |n|
        bucket_index = (n/num) % 10
        if 0 <= n
          bucket_index += 10
        end
        buckets[bucket_index].push(n)
      end

      array_copy = buckets.flatten
    end
    return array_copy
  end

end

