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
    list.append("doop")

    assert_equal "doop", list.head.data
  end

  def test_add_node_to_head_with_pointer
    list = LinkedList.new
    list.append("doop")

    assert_nil list.head.next_node
  end

  def test_count_node
    list = LinkedList.new
    list.append("doop")
    list.append("poop")

    assert_equal 2, list.count
  end

  def test_string_of_beats
    list = LinkedList.new
    list.append("doop")
    # assert_equal "doop", list.to_string
    # list.append("poop")

    assert_equal "doop", list.to_string
  end
end
