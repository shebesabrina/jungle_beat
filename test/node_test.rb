require './lib/node'
require './test/test_helper'

class NodeTest < Minitest::Test

  def test_it_exists
    node = Node.new("plop")
    
    assert_instance_of Node, node
  end

  def test_data
    node = Node.new("plop")

    assert_equal "plop", node.data
  end

  def test_next_node
    node = Node.new("plop")

    assert_nil node.next_node
  end
end
