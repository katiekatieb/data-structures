class List
  attr_accessor :last_node, :size

  def initialize(name, before)
    @size = 0
    @last_node = add_node(name, nil)
  end

  def add_node(name, before)
    @last_node = Course.new(name, before)
    @size += 1
  end

  def search(value)
    while @last_node != nil
      return @last_node if @last_node == value
      @last_node = @last_node.next
    end
  end

  def remove

  end

  def to_s

  end


end

class Node
  attr_accessor :name, :before

  def initialize (name, before)
    @name = name
    @before = before
  end
end
