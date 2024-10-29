require_relative "node"

class LinkedList
  def initialize
    @root = Node.new("ROOT")
  end

  def append(value)
    node = Node.new(value)
    tail.next_node = node
  end

  def prepend(value)
  end

  def size
  end

  def head
  end

  def tail
  end

  def at(index)
  end

  def contains?(value)
  end

  def find(value)
  end

  def to_s
  end
end
