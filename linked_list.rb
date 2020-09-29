require './node'
class LinkedList

  attr_accessor :head, :size, :tail
  
  def initialize(head)
    @head = Node.new(head)
    @size = 1
    @tail = @head
  end

  def prepend(value)
    @size += 1
    @head = Node.new(value, head)
  end

  def append(value)
    if @head == nil
      prepend(value)
    else
      @size += 1
      temp = @head
      while(temp.next_node != nil) 
        temp = temp.next_node
      end
      temp.next_node = Node.new(value)
      @tail = temp.next_node
    end
  end

  def at(index)
    return puts "Index does not exist." if index >= @size
    node = @head
    index.times do 
      node = node.next_node unless node.next_node.nil?
    end
    node
  end

  def pop()
    return puts "List is empty." if @size == 1 
    @tail = nil
    @tail = at(@size - 2)
    @tail.next_node = nil
    @size -= 1
  end

  def contains?(data)
    node = @head
    while (node != nil)
      return true if node.value == data
      node = node.next_node
    end
    return false
  end

  def find(data)
    node = @head
    @size.times do
      return @size if node.value == data
      node = node.next_node
    end
    return nil
  end

  def insert_at(value, index)
    if index < 0 || index >= size
      return "Index does not exist."
    elsif index == 0
      @size += 1
      @head = Node.new(value, head)
    elsif
      node = @head
      if node == @tail
        index.times do
          node = node.next_node
        end
        @size += 1
        node.next_node = Node.new(node.value)
        node.value = value
      else
        index -= 1
        index.times do
          node = node.next_node
        end
        @size += 1
        node.next_node = Node.new(value, node.next_node)
      end
    end
  end

  def remove_at(index)
    return puts "Index does not exist." if index >= @size
    if index == 0
      @head = @head.next_node
    end
    node = @head
    cur = @head
    index.times do 
      cur = node.next_node unless node.next_node.nil?
    end
    if node.next_node == tail
      pop()
    else
      puts node.next_node.value
      puts cur.next_node.value
      node.next_node = cur.next_node
      @size -= 1
    end
  end
end