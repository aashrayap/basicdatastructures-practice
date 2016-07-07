class Stack
  def initialize(array)
    @array=array
    @topindex=array.length
  end
  attr_accessor :array, :topindex
 
  def push(whatever)
    @array[@topindex]=whatever
    @topindex+=1
  end

  def pop
    @array[@topindex]=
end

s=Stack.new([1,3,4])
s.push(2)
print s.array
