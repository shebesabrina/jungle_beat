require './lib/node'

class LinkedList
  attr_reader :head
  attr_accessor :node
  def initialize
    @head = nil
    @node = nil
  end

  def append(beat)
    @head = node.next_node(beat)
  end
end
