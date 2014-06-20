class List

  def initialize(value)
    @head = Node.new(value, nil)
  end

  def add_node(value)
    node = @head
    while node.next_node != nil
      node = node.next_node
    end
    node.next_node = Node.new(value, nil)
  end

  def search(value)
    node = @head
    while node != nil
      if node.value == value
        puts node.value
      end
      node = node.next_node
    end
  end

  def remove(value)
    node = @head
    if node.value == value
      @head = @head.next_node
    else
      node = @head
      while (node != nil) && (node.next_node != nil) && ((node.next_node).value != value)
        node = node.next_node
      end

      if (node != nil) && (node.next_node != nil)
        node.next_node = (node.next_node).next_node
      end
    end
  end

  def to_s
    show_list = []
    node = @head
    while node != nil
      show_list << node.value
      node = node.next_node
    end
    #puts show_list.inspect
    return show_list.inspect
  end

end

class Node
  attr_accessor :value, :next_node

  def initialize (value, next_node)
    @value = value
    @next_node = next_node
  end
end


