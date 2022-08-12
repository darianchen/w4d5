def bad_two_sum?(arr, target_sum)
    arr.each_with_index do |el1, i|
        arr.each_with_index do |el2, j|
            if j > i && el1 + el2 == target_sum
                return true
            end
        end
    end
    false
end

def okay_two_sum?(arr, target_sum)
    sorted = arr.sort

    until sorted.empty?
        last = sorted.pop
        target = last - target_sum
        return true if sorted.include?(target)
    end
    return false
end


arr = [0, 1, 5, 7]
p okay_two_sum?(arr, 6) # => should be true
p okay_two_sum?(arr, 10) # => should be false

