require 'minitest/autorun'
require 'minitest/pride'
require './lib/node'
require './lib/linked_list'
require 'pry'

class LinkedListTest < Minitest::Test

  def test_list_exists
    list = LinkedList.new
    assert_instance_of LinkedList, list
  end

  def test_list_has_nil_head
    list = LinkedList.new
    assert_nil list.head
  end

  def test_list_can_append_node
    list = LinkedList.new

    assert_instance_of Node, list.append("West")
  end

  def test_node_has_surname_west_and_next_node_nil
    list = LinkedList.new

    assert_equal list.append("West").surname, "West"
    assert_nil list.append("West").next_node
  end

  def test_node_has_surname_west_and_next_node_nil
    list = LinkedList.new
require 'pry'; binding.pry
    assert_equal list.append("West").surname, "West"
  end


end
