require "minitest/autorun"
require "minitest/spec"
require "binary_tree"

describe "test binary tree" do

  before do
    @x = Tree.new(7)
    @x.add(13)
    @x.add(6)
    @x.add(2)
    @x.add(8)
    @x.add(11)
  end

  it "should set the root to 7" do
    @x.root.value.must_equal 7
  end

end
