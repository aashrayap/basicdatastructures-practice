class Queue
  def initialize
    @array=[]
    @backindex=0
    @frontindex=0
  end
  attr_accessor :array, :backindex

  def enqueue(whatever)
    @array[@backindex]=whatever
    @endindex+=1
    @array
  end

  def dequeue
    @array[frontindex]=nil
    @frontindex+=1
    @array
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