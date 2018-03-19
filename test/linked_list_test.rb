require './lib/node'
require './lib/linked_list'
require './test/test_helper'

class LinkedListTest < Minitest::Test

  def test_it_exists
    list = LinkedList.new

    assert_instance_of LinkedList, list
  end

  def test_node_head
    list = LinkedList.new

    assert_nil list.head
  end

  def test_append_node
    list = LinkedList.new

    assert_equal "doop", list.append("doop")
  end

  def test_instance_of_next_node
    list = LinkedList.new

    list.append("doop")
    # > list.head.next_node
    # => nil
    assert_nil list.head.next_node
  end
# > list.count
# => 1
# > list.to_string
# => "doop"
end
