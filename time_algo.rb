def my_min_phase_1(arr) 
  arr.each do |el1|
  # return el1 if arr.none? { |el2| el1 > el2 }
   return el1 if arr.all? { |el2| el1 <= el2 } #doesn't work with a duplicate
  end
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90]
# p my_min_phase_1(list)  # =>  -5

def my_min_phase_2(arr)
  min = arr[0]
  arr.each do |num|
    min = num if num < min
  end
  min
end

# p my_min_phase_2(list)  # =>  -5
