class HashTable
  def intitialize
  	@buckets=Array.new
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

  # def insert(word)
  # 	index=hash(word)


end

h=HashTable.new
a=h.hash('hi')
puts a