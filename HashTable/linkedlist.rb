Node = Struct.new(:data, :next, :define)
class LinkedList
  attr_accessor :head, :last ,:finder_node
  def initialize(first_node = nil)
    @head = first_node
    @last = first_node
  end
  def add_first_node(data,define)
    @head = Node.new(data, nil,define)
    @last = @head
  end
  def add_node(data,define)
    if @head.nil?
      add_first_node(data,define)
    else
      new_node = Node.new(data,define)
      @last.next = new_node
      @last = new_node
    end
    # puts "Added node with value: #{data} and defintinition #{define}"
  end
  # def remove_node(index)
  #   counter = 0
  #   current_node = @head
  #   prev_node = nil
  #   while counter < index
  #     prev_node = current_node
  #     current_node = current_node.next
  #     counter += 1
  #   end
  #   next_node = current_node.next
  #   current_node.next = nil      
  #   prev_node.next = next_node
  #   puts "Removed node at index #{index} with value: #{current_node.data}"
  # end
  def find_node(word)
    current_node = @head
    while word!= current_node.data
      current_node = current_node.next
    end
    # puts "Found node with value: #{current_node.data} and definitiion #{current_node.define}"
    current_node
    @finder_node=current_node
  end
  
  def print_list
    counter = 0
    current_node = @head
    loop do
      puts "Node at index #{counter}: #{current_node.data} with definition #{current_node.define}"
      break if current_node.next.nil?
      current_node = current_node.next
      counter += 1
    end
  end
end