def fibs(num)
  result = []
  0.upto(num - 1) do |i|
    if [0, 1].include?(i)
      result << i
      next
    end
    result << (result[i - 1] + result[i - 2])
  end
  result
end

def fibs_rec(desired_length, num = 0, result = [])
  puts 'This was printed recursively'
  return result if result.length == desired_length
  if [0, 1].include?(num)
    result << num
  else
    result << (result[num - 1] + result[num - 2])
  end
  fibs_rec(desired_length, num + 1, result)
end

# p fibs(8)
# p fibs_rec(8)

def merge_sort(array)
  return array if array.length <= 1

  mid_index = array.length / 2
  last_index = array.length - 1

  # puts "\n----- separator -----"
  # p array
  # puts "mid_index : #{mid_index}, last_index : #{last_index}"

  sorted_left = merge_sort(array[0, mid_index])
  sorted_right = merge_sort(array[mid_index, last_index])

  # puts "sorted_left : #{sorted_left}, sorted_right : #{sorted_right}"

  result = []
  target_length = sorted_left.length + sorted_right.length

  while result.length < target_length
    left_min = sorted_left.min
    right_min = sorted_right.min
    left_empty = left_min.nil?
    right_empty = right_min.nil?
    both_not_empty = !left_empty && !right_empty
    # puts "left : #{sorted_left}, right : #{sorted_right}"
    # puts "left_min : #{left_min}, right_min : #{right_min}"
    # puts "before result : #{result}\n\n"

    if left_empty || (both_not_empty && right_min < left_min)
      min_value = right_min
      result << min_value
      sorted_right.delete_at(sorted_right.index(min_value))
      next

    elsif right_empty || (both_not_empty && left_min <= right_min)
      min_value = left_min
      result << min_value
      sorted_left.delete_at(sorted_left.index(min_value))
      next
    end
  end
  result
end

p merge_sort [5, 1, 2, 3, 6, 4]
p merge_sort [7, 2, 5, 4, 1, 6, 0, 3]
p merge_sort [1, 2, 3, 4, 5]
p merge_sort [5, 4, 3, 2, 1]
p merge_sort [3, 1, 4, 5, 2]
p merge_sort [7, 7, 7, 7, 7]
p merge_sort [15, 22, 15, 33, 8, 9, 22, 4, 7, 12, 7, 18, 2, 2, 19, 30]
p merge_sort [3.14, 2.71, 0.577, 1.618, 4.669, 2.718]
p merge_sort []
p merge_sort [34, 7, 23, 32, 5, 62, 32, 43, 17, 10, 12, 13, 9, 44, 50, 31]
p merge_sort [42]
p merge_sort [-3, -1, -7, 4, 2, 0, -5, 8, -2]
