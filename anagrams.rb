#phase 1

def first_anagram?(str1, str2)
  str1.chars.permutation.to_a.include?(str2.chars)
end

#phase2
def second_anagram?(str1, str2) #time complexity = n^2
  arr = str2.chars
  str1.chars.each do |el| #n
    if arr.include?(el) #n
      index = arr.find_index(el) #n but this doesn't change overall time 
      arr.delete_at(index)
    else
      return false
    end
  
  end
  if arr.empty?
    return true
  else
    false
  end
end

#phase 3
def third_anagram?(str1, str2)
  arr1 = str1.chars.sort
  arr2 = str2.chars.sort #sort is n log n

  arr1 == arr2
end


def anagram?(str1,str2)
  # hash1 = Hash.new(0)
  # hash2 = Hash.new(0)

  # str1.chars.each { |el| hash1[el] += 1 }
  # str2.chars.each { |el| hash2[el] += 1 }
  
  # hash1 == hash2

  hash = Hash.new(0)
  str1.chars.each { |el| hash[el] += 1 }
  str2.chars.each  do  |el| 
    if hash[el] == 0 || hash[el].nil?
      return false  
    else
      hash[el] -= 1
    end 
  end
  
  hash.all? { |k,v| v.zero? }

end





p anagram?("gizmo", "sally")    #=> false
p anagram?("elvis", "lives")    #=> true
