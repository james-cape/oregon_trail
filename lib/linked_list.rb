require './lib/node'

class LinkedList

  attr_reader :head
  def initialize
    @head = nil
    # @next_node = nil
  end

  def append(new_surname)
    new_node = Node.new(new_surname)
    @head = new_node
  end



end
