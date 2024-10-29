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
    last_node = @root
    count = 0
    until finished
      break if last_node.next_node.nil?

      count += 1
      last_node = last_node.next_node
    end
    count
  end

  def head
    return nil if @root.next_node.nil?

    @root.next_node
  end

  def tail
    finished = false
    last_node = @root
    until finished
      break if last_node.next_node.nil?

      last_node = last_node.next_node
    end
    last_node
  end

  def at(index)
  end

  def contains?(value)
  end

  def find(value)
  end

  def insert_at(value, index)
    
  end

  def remove_at(index)

  def to_s
    finished = false
    last_node = @root.next_node.nil? ? @root : @root.next_node
    string_array = []
    until finished
      string_array << "(#{last_node.value}) -> "

      if last_node.next_node.nil?
        string_array << "nil"
        break
      end

      last_node = last_node.next_node
    end
    string_array.join
  end
end
