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
    previous_head = head
    new_node = Node.new(value, previous_head.next_node)

    @root.next_node = new_node
  end

  def size
    finished = false
    current_node = @root
    count = 0
    until finished
      break if current_node.next_node.nil?

      count += 1
      current_node = current_node.next_node
    end
    count
  end

  def head
    return nil if @root.next_node.nil?

    @root.next_node
  end

  def tail
    finished = false
    current_node = @root
    until finished
      break if current_node.next_node.nil?

      current_node = current_node.next_node
    end
    current_node
  end

  def at(index)
    # loop includes going through the root, which should not be included in printed index.
    current_node = @root
    (index + 1).times do |i|
      return nil if current_node.nil?

      current_node = current_node.next_node
    end
    current_node
  end

  def contains?(value)
    finished = false
    current_node = @root
    until finished
      return false if current_node.nil?

      return true if current_node.value == value

      current_node = current_node.next_node
    end
    false
  end

  def find(value)
    finished = false
    current_node = @root
    index = 0
    until finished
      index += 1
      return nil if current_node.nil?

      return index if current_node.value == value

      current_node = current_node.next_node
    end
    nil
  end

  def to_s
    finished = false
    current_node = @root.next_node.nil? ? @root : @root.next_node
    string_array = []
    until finished
      string_array << "(#{current_node.value}) -> "

      if current_node.next_node.nil?
        string_array << "nil"
        break
      end

      current_node = current_node.next_node
    end
    string_array.join
  end
end
