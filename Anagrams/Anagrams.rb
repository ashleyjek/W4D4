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

def first_anagram?(str1,str2)
  anagrams = []
  (0...str1.length).each do |idx1|
    (idx1...str1.length).each do |idx2|
      anagrams << str1[idx1..idx2]
    end
  end

  anagrams.each do |ana|
    if ana == str2
      return true
    end
  end
  false

end

p first_anagram?("potato","cat")
p first_anagram?("potatocatkjsbdkjsbfkjbskjssfsgkhjhgfghnjhgf","catcef")
