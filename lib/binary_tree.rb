class Tree
  attr_accessor :name, :parent, :left, :right

  def initialize (name, parent, left, right)
    @name = name
    @parent = parent
    @left = left
    @right = right
  end


