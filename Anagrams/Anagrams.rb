def first_anagram?(str1,str2) # => O(n!)
  arr1 = str1.split("")
  arr2 = str2.split("")

  if arr1.length != arr2.length
    return false
  end

  if arr1.permutation(str2.length).include?(arr2)
    return true
  end
  false

end

# p first_anagram?("potato","cat")
# p first_anagram?("tac","cat")
# p first_anagram?("catt","caat")


def second_anagram?(str1, str2) # => O(n) , #second_anagram is worst than #first_anagram
  arr1 = str1.split("")
  arr2 = str2.split("")

  if arr1.length != arr2.length
    return false
  end

  arr1.each do |ele|
    if arr2.index(ele) != nil
      arr2.delete_at(arr2.index(ele))
    end
  end

  if arr2.length == 0
    return true
  end

  false
      
end

# p second_anagram?("potatockjsbadkjsbtfkjbskjssfsgkhjhgfghnjhgf","cat")
# p second_anagram?("catt","caat")

def third_anagram?(str1, str2) # O(n^2) , worse than #second_anagram?
  alphabet = ("a".."z").to_a

  sorted = false
  until sorted
    sorted = true
    (0...str1.length-1).each do |i|
      if alphabet.index(str1[i]) > alphabet.index(str1[i+1])
        str1[i], str1[i+1] = str1[i+1], str1[i] 
        sorted = false
      end
    end
  end

  sorted = false
  until sorted
    sorted = true
    (0...str2.length-1).each do |i|
      if alphabet.index(str2[i]) > alphabet.index(str2[i+1])
        str2[i], str2[i+1] = str2[i+1], str2[i] 
        sorted = false
      end
    end
  end

  if str1 == str2
    return true
  end
  false

end

# p third_anagram?("gizmo", "sally")    #=> false
# p third_anagram?("elvis", "lives")    #=> true
# p third_anagram?("catto", "caato")   # => false

def fourth_anagram?(str1,str2) #=> O(n)

  hash1 = Hash.new(0)
  hash2 = Hash.new(0)

  str1.each_char do |char|
    hash1[char] += 1
  end

  str2.each_char do |char|
    hash2[char] += 1
  end

  hash1 == hash2

end


# p fourth_anagram?("gizmo", "sally")    #=> false
# p fourth_anagram?("elvis", "lives")    #=> true




