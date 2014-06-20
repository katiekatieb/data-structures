class Stack
  def initialize
    @head = Node.new(value, nil)
  end

  def pop

  end

  def push

  end
end

class Node
  attr_accessor :value, :next_node

  def initialize (value, next_node)
    @value = value
    @next_node = next_node
  end
end
