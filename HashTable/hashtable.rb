require './linkedlist.rb'

class HashTable
  def initialize
  	@buckets=Array.new(26)
  end

  def hash(word)
  	first_letter=word.downcase[0]
  	checker='a'
  	array_index=0
  	until checker=="aa"
  		return array_index if checker==first_letter
  		array_index+=1
  		checker.next!
  	end
  	puts "error message"
  end

  def insert(word)
  	@buckets[hash(word)]=LinkedList.new if @buckets[hash(word)].nil?
  	@buckets[hash(word)].add_node(word)
  end

  def render_list
  	@buckets.each_with_index do |bucket,index|
  	  if bucket.nil?
  		puts "nothing in #{index} bucket "
  	  else
  	  	bucket.print_list
  	  end
  	end
  end
end

h=HashTable.new
h.insert("buddy")
h.insert('gnarly')
h.insert("bee")
h.render_list