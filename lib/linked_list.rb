class LinkedList
  attr_reader :head,
              :count

  def initialize
    @head = nil
    @count = 0
  end

  def append(data)
    @head.nil?
    @head = Node.new(data)
    @count += 1
  end

  def to_string
    "#{@head.data}"
  end
end
