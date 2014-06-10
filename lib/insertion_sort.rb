
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
  if array.length <= 1
    return array
  else
    return array.each_slice(2).to_a
  end
end

x = [3, 43, 6, -9, 0]
puts mergeSort(x).inspect
