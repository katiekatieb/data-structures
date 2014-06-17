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
    y = @x.insertionSort
    y.must_equal [-300, -234, -9, 0, 0, 3, 6, 43, 239, 3329, 33423]
  end

  it "should sort the numbers from least to greatest using merge sort" do
    y = @x.mergeSort
    y.must_equal [-300, -234, -9, 0, 0, 3, 6, 43, 239, 3329, 33423]
  end

  it "should sort the numbers from least to greatest using quick sort" do
    y = @x.quickSort
    y.must_equal [-300, -234, -9, 0, 0, 3, 6, 43, 239, 3329, 33423]
  end

  it "lets try random numbers :]" do
    y = @x2.insertionSort
    x = @x2.mergeSort
    z = @x2.sort
    y.must_equal x
    x.must_equal z
  end

  it "should fail on empty array" do
    x = @x3.mergeSort
    x.must_equal []
  end

  it "should sort the numbers from least to greatest using radix sort" do
    y = @x.radixSort
    y.must_equal [-300, -234, -9, 0, 0, 3, 6, 43, 239, 3329, 33423]
  end

end

Minitest.after_run{
  test = Array.new(100000) { rand(100000000000000) }

  puts "MERGE SORT"
  puts Benchmark.measure { test.mergeSort }
  puts "INSERTION SORT"
  puts Benchmark.measure { test.insertionSort }
  puts "QUICK SORT"
  puts Benchmark.measure { test.quickSort }
  puts "RADIX SORT"
  puts Benchmark.measure { test.radixSort }
  puts "THE .SORT"
  puts Benchmark.measure { test.sort }
}

