class Stack
  def initialize
    @array=[]
    @topindex=0
  end
  attr_accessor :array, :topindex
 
  def push(whatever)
    @array[@topindex]=whatever
    @topindex+=1
  end

  def pop
    return if @topindex==0
    @array[@topindex-1]=nil
    @topindex-=1
  end

  def peek
    print @array[topindex-1]
  end

  def display
    i=0
    while i<@array.length
      if !@array[i].nil?
        print @array[i]
      end
      i+=1
    end
  end
end

s=Stack.new
s.push(2)
s.push(3)
s.push(4)
s.push(5)
s.pop
s.pop
s.peek
