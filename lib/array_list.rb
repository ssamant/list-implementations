# Implementation of a list using a Native array --> ruby does this automatically

class ArrayList
  def initialize
    #pretend that this is a native array-has a fixed size, indexing only
    #fized size of this array is the capacity of the array (capacity = 10)
    @storage = [0, 0, 0, 0, 0, 0, 0, 0, 0, 0]
    @size = 0
  end

  # Adds _value_ at the end of the list
  def add(value)
    rause "Bad Things" if @size == @storage.length
    @storage[@size] = value
    @size += 1
  end

  # Deletes the _last_ value in the array
  def delete
    raise "Bad Things" if @size == 0
    # @storage[@size-1] = 0 <-- don't need this since it doesn't matter whether the value is 0 or something else
    @size -= 1
  end

  def include?(key)
    @size.times do |i|
      if @storage[i] == key
        return true
      end
    end
    return false
  end

  def size
    #how many spots in the array are taken up
    @size
  end


  #should return the largest element
  def max
    max = @storage[0]
    @size.times do |i|
      if @storage[i] > max
        max = @storage[i]
      end

    end
      return max
  end

  def to_s
    str = ""
    @size.times do |i|
      str += "#{@storage[i]}, "
    end
    return "[#{str[0..-3]}]"
  end

end
