require_relative 'node'
class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end


  def count
    number_of_nodes = 0
    current_node = @head
    number_of_nodes = 0 if @head.nil?
    until current_node.nil?
      number_of_nodes += 1
      current_node = current_node.next_node
    end
    number_of_nodes
  end

  def to_string
    current_node = @head
    @head if @head.nil?
    node_data = "#{@head.data}"
    current_node = current_node.next_node until current_node.next_node.nil?
      node_data += " #{current_node.data}"
    node_data
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      current_node = @head
      current_node = current_node.next_node until current_node.next_node.nil?
        current_node = current_node.next_node
      current_node.next_node = Node.new(data)
    end
  end

  def prepend(data)
    if @head.nil?
      @head = Node.new(data)
    else
      new_node = Node.new(data)
      new_node.next_node = @head
      @head = new_node
    end
  end

  def insert(index, data)
    @head = Node.new(data) if @head.nil?
    new_node = Node.new(data)
    current_node = @head
    (index - 2).times do
      current_node = current_node.next_node
    end
    insertion_node = current_node
    new_node.next_node = current_node.next_node
    insertion_node.next_node = new_node
  end

  def find(index, element_quantity)
    @head if @head.nil?

    current_node = @head
    index.times do
      current_node = current_node.next_node
    end
    elements = current_node.data
    (element_quantity - 1).times do
      current_node = current_node.next_node
      elements += " #{current_node.data}"
    end
    elements
  end

  def includes?(beat)
    return false if @head.nil?
    return true if @head.data == beat
    current_node = @head

    count.times do
      return false if current_node.next_node.nil?
      current_node = current_node.next_node
      return true if current_node.data == beat
    end
  end

  def pop
    return nil if @head.nil?
    if @head.next_node.nil?
      beat = "#{@head.data}"
      @head = nil
      beat
    else
      current_node = @head
      current_node = current_node.next_node until current_node.next_node.nil?
      tail_node = "#{current_node.data}"
      current_node.next_node = nil
      tail_node
    end
  end
end
