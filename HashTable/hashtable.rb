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

  def insert(word,define)
  	@buckets[hash(word)]=LinkedList.new if @buckets[hash(word)].nil?
  	@buckets[hash(word)].add_node(word,define)
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

  def define(word)
  	bucket_index=hash(word)
  	word_node=@buckets[bucket_index].find_node(word)
  	puts "The definition of #{word} is #{@buckets[bucket_index].finder_node.define}"
  end


end

h=HashTable.new
h.insert("buddy","to be a bud")
h.insert("calvin","a cool guy")
h.define('buddy')
h.define('calvin')
# h.render_list