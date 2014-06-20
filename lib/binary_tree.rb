class Tree
  attr_accessor :root

  def initialize(value)
    @root = TreeNode.new(value, nil, nil)
  end

  def add(value)
    node = @root
    while node != nil
      if value > node.value && node.right == nil
        node.right = TreeNode.new(value, nil, nil)
      elsif value < node.value && node.left == nil
        node.left = TreeNode.new(value, nil, nil)
      elsif value > node.value
        node = node.right
      elsif value < node.value
        node = node.left
      else
        return node
      end
    end
  end

  def inOrder(node = @root)
    if node == nil
      return node
    else
      inOrder(node.left)
      node.value.to_s
      inOrder(node.right)
    end
  end

  def postOrder(node = @root)
    if node == nil
      return node
    else
      inOrder(node.left)
      inOrder(node.right)
      puts node.value.to_s
    end
  end

  def preOrder(node = @root)
    if node == nil
      return node
    else
      puts node.value.to_s
      inOrder(node.left)
      inOrder(node.right)
    end
  end

end

class TreeNode

  attr_accessor :value, :left, :right

  def initialize (value, left, right)
    @value = value
    @left = left
    @right = right
  end

end

# x = Tree.new(7)
# x.add(13)
# x.add(6)
# x.add(2)
# x.add(8)
# x.add(11)

# puts "ROOT: #{x.root.value}"

# puts "inOrder"
# x.inOrder
# puts "preOrder"
# x.preOrder
# puts "postOrder"
# x.postOrder




