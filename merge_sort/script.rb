def merge_sort(array)
  if array.length < 2
      array
  else
    left_array = array[0...array.length/2]
    right_array = array[array.length/2..-1]
    sorted_left = merge_sort(left_array)
    sorted_right = merge_sort(right_array)

    sorted_array = []
    until sorted_left.empty? && sorted_right.empty?
      if sorted_left.empty? 
        return sorted_array + sorted_right
      elsif sorted_right.empty?
        return sorted_array + sorted_left
      else
          sorted_left[0] < sorted_right[0] ? sorted_array << sorted_left.shift : sorted_array << sorted_right.shift
      end
    end
    sorted_array
  end
end
p merge_sort([1, 112, 3, 45, 6])