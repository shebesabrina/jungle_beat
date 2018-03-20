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
    list.append("deep")
    list.append("plop")

    assert_equal 3, list.count
  end

  def test_string_of_beats
    list = LinkedList.new
    list.append("doop")
    assert_equal "doop", list.to_string
    list.append("deep")
    assert_equal "doop deep", list.to_string
    list.append("plop")

    assert_equal "doop deep plop", list.to_string
  end

  def test_prepend
    list = LinkedList.new
    list.append("plop")
    list.append("suu")

    assert_equal "plop", list.head.data
    assert_equal "suu", list.head.next_node.data

    list.prepend("dop")

    assert_equal "dop", list.head.data
    assert_equal "plop", list.head.next_node.data
    # > list = LinkedList.new
    # > list.append("plop")
    # => "plop"
    # > list.to_string
    # => "plop"
    # > list.append("suu")
    # => "suu"
    # > list.prepend("dop")
    # => "dop"
  end
end

# > list.to_string
# => "dop plop suu"
# > list.count
# => 3
# > list.insert(1, "woo")
# => "woo"
# list.to_string
# => "dop woo plop suu"
