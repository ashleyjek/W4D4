def anagram?(str1,str2)

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


p anagram?("gizmo", "sally")    #=> false
p anagram?("elvis", "lives")    #=> true

