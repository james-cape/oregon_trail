require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require 'pry'

class NodeTest < Minitest::Test

  def test_node_exists
    node = Node.new("Burke")
    assert_instance_of Node, node
  end

  def test_node_has_surname_and_nil_node
    node = Node.new("Burke")
    assert_equal node.surname, "Burke"
    assert_nil node.next_node
  end

end
