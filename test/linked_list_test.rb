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
    list.append("deep")
    list.append("plop")
    list.append("suu")
    list.append("wuu")

    assert_equal "doop", list.head.data
    assert_equal "deep", list.head.next_node.data
    assert_equal "plop", list.head.next_node.next_node.data
    assert_equal "suu", list.head.next_node.next_node.next_node.data
    assert_equal "wuu", list.head.next_node.next_node.next_node.next_node.data
    assert_instance_of Node, list.head
  end

  def test_add_node_to_head_with_pointer
    list = LinkedList.new
    list.append("doop")

    assert_nil list.head.next_node
  end

  def test_count_node
    list = LinkedList.new
    assert_equal 0, list.count
    list.append("doop")
    assert_equal 1, list.count
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
  end

  def test_insert

    list = LinkedList.new
    list.append("dop")
    list.append("plop")
    list.append("suu")

    assert_equal "plop", list.head.next_node.data
    list.insert(2, "woo")

    assert_equal "dop", list.head.data
    assert_equal "woo", list.head.next_node.data
    assert_equal "plop", list.head.next_node.next_node.data
    assert_equal "suu", list.head.next_node.next_node.next_node.data
  end

  def test_insert_into_empty_linked_list
    list = LinkedList.new
    list.insert(1, "woo")

    assert_equal "woo", list.head.data
  end

  def test_find

    list =  LinkedList.new
    list.append("deep")
    list.append("woo")
    list.append("shi")
    list.append("shu")
    list.append("blop")

    list.find(2, 1)

    assert_equal "shi", list.find(2, 1)
    assert_equal "woo shi shu", list.find(1, 3)
    #   > list.to_string
    # => "deep woo shi shu blop"
    # => "shi"
  end

# > list.find(1, 3)
# => "woo shi shu"
# > list.includes?("deep")
# => true
# > list.includes?("dep")
# => false
# > list.pop
# => "blop"
# > list.pop
# => "shu"
# > list.to_string
# => "deep woo shi"
end
