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
  return array if array.length == 1

  mid_index = array.length / 2
  last_index = array.length - 1

  puts "\n----- separator -----"
  p array
  puts "mid_index : #{mid_index}, last_index : #{last_index}"

  sorted_left = merge_sort(array[0, mid_index])
  sorted_right = merge_sort(array[mid_index, last_index])

  puts "sorted_left : #{sorted_left}, sorted_right : #{sorted_right}"

  if sorted_left.first > sorted_right.first
    result = sorted_right + sorted_left
  else
    result = sorted_left + sorted_right
  end

  sorted_left.each_with_index do |num, index|
    
  end

  # if merge_sort(array[0, mid_index])
  # result = (sorted_left + sorted_right).sort
  puts "result : #{result}"

  result
end

# p merge_sort [5, 1, 2, 3, 6, 4]
p merge_sort [7, 2, 5, 4, 1, 6, 0, 3]
