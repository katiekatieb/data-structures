class Queue
  attr_accessor :head, :tail, :size

  def initialize(value)
    @size = 1
    @head = QueueNode.new(value, nil, nil)
    @tail = @head
  end

  def enqueue(value)
    node = @head
    @head = QueueNode.new(value, nil, node)
    node.next_node = @head
    @size += 1
  end

  def dequeue
    node = @tail
    @tail = node.next_node
    node.next_node.prev_node = nil
    @size -= 1
  end

end

class QueueNode
  attr_accessor :value, :next_node, :prev_node

  def initialize (value, next_node, prev_node)
    @value = value
    @next_node = next_node
    @prev_node = prev_node
  end
end

# x = Queue.new(1)

# # puts "HEAD: #{x.head.value}"
# # puts "TAIL: #{x.tail.value}"

# x.enqueue(2)
# # puts "HEAD: #{x.head.value}"
# # puts "TAIL: #{x.tail.value}"

# x.enqueue(3)
# x.enqueue(4)
# x.enqueue(5)
# x.enqueue(6)
# # puts "HEAD: #{x.head.value}"
# # puts "TAIL: #{x.tail.value}"

# # puts x.inspect

# puts "HEAD #{x.head.value}"
# puts "TAIL #{x.tail.value}"
# puts "SIZE #{x.size.inspect}"

# x.dequeue
# # puts x.inspect

# puts "HEAD #{x.head.value}"
# puts "TAIL #{x.tail.value}"
# puts "SIZE #{x.size.inspect}"

# x.dequeue
# # puts x.inspect

# puts "HEAD #{x.head.value}"
# puts "TAIL #{x.tail.value}"
# puts "SIZE #{x.size.inspect}"



