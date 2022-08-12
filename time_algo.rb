def my_min_phase_1(arr)
  min = nil
  arr.each_with_index do |ele1, i| #this is changing ele1
    arr.each_with_index do |ele2, j|
      if ele2 < ele1
        next
      end
    end
  end
  return min
end

list = [ 0, 3, 5, 4, -5, 10, 1, 90]
p my_min_phase_1(list)  # =>  -5
# p my_min_phase_2(list)  # =>  -5