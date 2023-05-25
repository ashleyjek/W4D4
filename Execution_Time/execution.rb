#O(n^2)
def my_min(array)
#  n = array.length - 1


 sorted = false

  until sorted
    sorted = true


    (0...array.length - 1).each do |i|
      if (array[i] > array[i + 1])
        array[i], array[i + 1] = array[i + 1], array[i]
        sorted = false
      end
    end
  end
  array.first

end

#O(n)
list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]
p my_min(list)

def my_min(array)
  current = 0
  array.each do |ele|
    if ele < current
      current = ele
    end
  end
  return current


end


list = [ 0, 3, 5, 4, -5, 10, 1, 90 ]

p my_min(list)

def largest_contiguous_subsum(array) # <= O(n^2)
  subs = []

  (0...array.length).each do |idx1| # <= O(n^2)
    (idx1...array.length).each do |idx2| 
      subs << array[idx1..idx2]
    end
  end

  largest = 0
  subs.each do |array| #<= O(n^2)
    if array.sum > largest
      largest = array.sum 
    end
  end

  largest

end

list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8

# possible sub-sums
# [5]           # => 5
# [5, 3]        # => 8 --> we want this one
# [5, 3, -7]    # => 1
# [3]           # => 3
# [3, -7]       # => -4
# [-7]          # => -7

def largest_contiguous_subsum(array)
  largest = array.first # 5
  sum = array.first # 5

  (0...array.length-1).each do |idx|
    sum = array[idx] + array[idx+1]
    if sum > largest
      largest = sum
    end
  end

  largest
end


list = [5, 3, -7]
p largest_contiguous_subsum(list) # => 8

# possible sub-sums
# [5]           # => 5
# [5, 3]        # => 8 --> we want this one
# [5, 3, -7]    # => 1
# [3]           # => 3
# [3, -7]       # => -4
# [-7]          # => -7