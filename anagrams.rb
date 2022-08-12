#phase 1

def anagram_phase1?(str1, str2)
  str1.chars.permutation.to_a.include?(str2.chars)
end

#phase2
def anagram(str1, str2)

end


p anagram?("gizmo", "sally")    #=> false
p anagram?("elvis", "lives")    #=> true
