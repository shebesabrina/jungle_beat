class LinkedList
  attr_reader :head

  def initialize
    @head = nil
  end

  def append(data)
    if @head.nil?
      @head = Node.new(data)
    else
      current_node = @head
      until current_node.next_node.nil?
        current_node = current_node.next_node
      end
      current_node.next_node = Node.new(data)
    end
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
    until current_node.next_node.nil?
      current_node = current_node.next_node
      node_data += " #{current_node.data}"
    end
    node_data
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
end

  # def insert(index, data)
  #   current_node = @head
  #   # current_node = Node.new(data)
  #   # index = current_node(index)
  #   (index - 1).times do
  #     if current_node.next_node != nil
  #     current_node.next_node.data
  #   end
  #   current_node = Node.new(data)
  # end



 #  def insert_at_index(index, value)
 #   current = head
 #
 #   (index - 1).times do
 #     if current.pointer != nil
 #     current = current.next
 #     end
 #   end
 #   new_node = Node.new(value)
 #   if current.pointer != nil
 #     new_node.pointer = current.pointer
 #   end
 #   current.pointer = new_node
 # end
# end
