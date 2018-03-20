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
    node_data = "#{@head.data} "
    until current_node.next_node.nil?
      current_node = current_node.next_node
      node_data += "#{current_node.data}"
    end
    node_data
  end
end
