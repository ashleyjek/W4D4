def bad_two_sum?(arr,target) # O(n^2)
  (0...arr.length).each do |idx1|
    (idx1+1...arr.length).each do |idx2|
      if arr[idx1] + arr[idx2] == target
        return true
      end
    end
  end
  false

end


arr = [0, 1, 5, 7]
p bad_two_sum?(arr, 6) # => should be true
p bad_two_sum?(arr, 10) # => should be false

# require "byebug"


def okay_two_sum?(arr,target) #=> O(n)
  sorted = arr.sort

  until sorted.empty?
    left = sorted.first
    right = sorted.last
    if left + right == target
      return true
    elsif left + right > target
      sorted.pop
    else
      sorted.shift
    end
  end
  false

end

arr = [0, 1, 5, 7]

p okay_two_sum?(arr,8)


def two_sum?(arr, target) # O(n)
  hash = Hash.new {|h, k| h[k] = false }
  arr.each do |ele|
    if hash[ele] == true
      return true
    else hash[target-ele] = true
    end
  end

end

arr = [0, 1, 5, 7, 10]
p two_sum?(arr, 8)
