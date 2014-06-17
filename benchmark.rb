require "benchmark"
require "sort"

test = Array.new(100000) { rand(1000) }

# # uno = mergeSort(test).inspect
# # two = insertionSort(test).inspect

# # if uno == two
# #   puts "YES"
# # else
# #   puts "NO"
# # end

puts Benchmark.measure { mergeSort(test) }
puts Benchmark.measure { insertionSort(test) }
