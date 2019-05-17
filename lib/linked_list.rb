require './lib/node'

class LinkedList

  attr_reader :head, :count
  def initialize
    @head = nil
    @count = 0
  end

  def append(new_surname)
    @count += 1
    new_node = Node.new(new_surname)
    @head = new_node
  end

  def to_string
    "The #{@head.surname} family"
  end



end
