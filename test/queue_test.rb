require "minitest/autorun"
require "minitest/spec"
require "queue"

describe "test queue" do

  before do
    @x = Queue.new(1)
    @x.enqueue(2)
    @x.enqueue(3)
    @x.enqueue(4)
    @x.enqueue(5)
    @x.enqueue(6)
  end

  it "should have a head of 1" do
    @x.head.value.must_equal 6
  end

  it "should have a tail of 1" do
    @x.tail.value.must_equal 1
  end

  it "should have a tail of 2" do
    @x.dequeue
    @x.tail.value.must_equal 2
  end

  it "should have a head of 7" do
    @x.enqueue(7)
    @x.head.value.must_equal 7
  end

  it "should have a size of 6" do
    @x.size.must_equal 6
  end

  it "should have a size of 5" do
    @x.dequeue
    @x.size.must_equal 5
  end

end
