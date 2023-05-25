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


def okay_two_sum?(arr,target)
  sorted = arr.sort
  mid = sorted.length / 2

  left = sorted.take(mid)
  right = sorted.drop(mid)

  if sorted[mid] == target
    mid
  
end
