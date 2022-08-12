#phase 1

def first_anagram?(str1, str2)
  str1.chars.permutation.to_a.include?(str2.chars)
end

#phase2
def anagram?(str1, str2)
  arr = str2.chars
  str1.chars.each do |el|
    if arr.include?(el)
      index = arr.find_index(el)
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






p anagram?("gizmo", "sally")    #=> false
p anagram?("elvis", "lives")    #=> true
