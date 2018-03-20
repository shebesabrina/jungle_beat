class LinkedList
  attr_reader :head,
              :count

  def initialize
    @head = nil
    @count = 0
  end

  def append(beat)
    @head.nil?
    @head = Node.new(beat)
    @count += 1
  end

  def to_string(beat)
    "{beat}"
  end
end
