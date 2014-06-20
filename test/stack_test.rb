require "minitest/autorun"
require "minitest/spec"
require "stack"

describe "test stack" do

  before do
    @x = Stack.new(1)
  end

  it "should have a head of 1" do
    @x.head.value.must_equal 1
  end

  it "should add 2, 3, and 4 to the stack" do
    @x.push(2)
    @x.push(3)
    @x.push(4)
    @x.head.value.must_equal 4
  end

  it "should add 2, 3, and 4 to the stack and remove the top node" do
    @x.push(2)
    @x.push(3)
    @x.push(4)
    @x.pop
    @x.head.value.must_equal 3
  end

end
