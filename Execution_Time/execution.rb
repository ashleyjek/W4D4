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
