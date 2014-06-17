require "minitest/autorun"
require "minitest/spec"
require "linked_list"

describe "test sort methods" do

  it "should create a new list and add 1, 2, 3, 4, and 5 to the list" do
    list = List.new(1)
    list.add_node(2)
    list.add_node(3)
    list.add_node(4)
    list.add_node(5)
    list.to_s.must_equal "[1, 2, 3, 4, 5]"
  end

  it "should remove the node with a value of 3" do
    list = List.new(1)
    list.add_node(2)
    list.add_node(3)
    list.add_node(4)
    list.add_node(5)
    list.remove(3)
    list.to_s.must_equal "[1, 2, 4, 5]"
  end

end
