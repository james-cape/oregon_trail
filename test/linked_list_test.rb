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

  def test_list_head_is_now_node
    list = LinkedList.new
    list.append("West")

    assert_instance_of Node, list.head
  end

  def test_list_updates_with_new_node
    list = LinkedList.new
    list.append("West")

    assert_equal list.head.surname, "West"
  end

  def test_appended_list_still_has_nil_head
    list = LinkedList.new
    list.append("West")

    assert_nil list.head.next_node
  end

  def test_count_of_list
    list = LinkedList.new
    list.append("West")

    assert_equal list.count, 1
  end

  def test_list_can_output_family_string
    list = LinkedList.new
    list.append("West")

    assert_equal list.to_string, "The West family"
  end

######### Iteration 3 ##########

  def test_placeholder
    list = LinkedList.new
    list.append("Rhodes")
    list.append("Hardy")
    require 'pry'; binding.pry

    assert_equal list.head.next_node.surname, "Hardy"
  end

end
