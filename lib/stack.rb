class Stack
  attr_accessor :head

  def initialize(value)
    @head = Node.new(value, nil)
  end

  def pop
    node = @head
    @head = node.next_node
  end

  def push(value)
    node = Node.new(value, @head)
    @head = node
  end
end

class Node
  attr_accessor :value, :next_node

  def initialize (value, next_node)
    @value = value
    @next_node = next_node
  end
end

# x = Stack.new(1)
# puts x.inspect
# puts "HEAD: #{x.head.value}"
# x.push(7)
# puts "HEAD: #{x.head.value}"
# x.push(3)
# puts "HEAD: #{x.head.value}"
# puts x.inspect

# x.pop
# puts x.inspect

# x.pop
# puts x.inspect
