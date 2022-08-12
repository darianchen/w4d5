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

#phase 1
def largest_contiguous_subsum_phase_1(arr)
  sub = []
  arr.each_with_index do |ele1, i|
    arr.each_with_index do |ele2, j|
      sub << arr[i..j] if !arr[i..j].empty?
    end
  end
  
  sum = sub[0].sum
  sub.each do |subarr|
    sum = subarr.sum if subarr.sum > sum
  end
  sum
end

def largest_contiguous_subsum_phase_2(arr)
  return arr.max if arr.all? { |num| num < 0 }
  return arr.sum if arr.all? { |num| num > 0 }
  largest = arr.min
  current = 0
  
  i = 0
  while i < arr.length
  current = current + arr[i]

  if largest < current
    largest = current
  end

  if current < 0
    current = 0
  end

  i += 1
  end

  largest
end


list = [5, 3, -7]
p largest_contiguous_subsum_phase_2(list) # => 8

list = [-5, -1, -3]
p largest_contiguous_subsum_phase_2(list) # => -1 (from [-1])

list = [-2, 1, -3, 4, -1, 2, 1, -5, 4]
p largest_contiguous_subsum_phase_2(list) # 6