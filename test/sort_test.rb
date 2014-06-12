require "minitest/autorun"
require "minitest/spec"
require "benchmark"
require "sort"

describe "test sort methods" do

  before do
    @x = [3, 43, 6, -9, 0, -300, 239, 3329, -234, 33423, 0]
    @x2 = Array.new(10) { rand(1000) }
    @x3 = []
  end

  it "should sort the numbers from least to greatest using insertion sort" do
    y = insertionSort(@x)
    y.must_equal [-300, -234, -9, 0, 0, 3, 6, 43, 239, 3329, 33423]
  end

  it "should sort the numbers from least to greatest using merge sort" do
    y = mergeSort(@x)
    y.must_equal [-300, -234, -9, 0, 0, 3, 6, 43, 239, 3329, 33423]
  end

  it "should sort the numbers from least to greatest using quick sort" do
    y = quickSort(@x)
    y.must_equal [-300, -234, -9, 0, 0, 3, 6, 43, 239, 3329, 33423]
  end

  it "lets try random numbers :]" do
    y = insertionSort(@x2)
    x = mergeSort(@x2)
    z = @x2.sort
    y.must_equal x
    x.must_equal z
  end

  it "should fail on empty array" do
    x = mergeSort(@x3)
    x.must_equal []
  end

end

Minitest.after_run{
  test = Array.new(10000) { rand(1000) }

  puts "MERGE SORT"
  puts Benchmark.measure { mergeSort(test) }
  puts "INSERTION SORT"
  puts Benchmark.measure { insertionSort(test) }
  puts "QUICK SORT"
  puts Benchmark.measure { quickSort(test) }
}

