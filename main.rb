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

# def calc_fib(num)
#   if [0, 1].include?(num)
#     num
#   else
#     calc_fib(num - 1) + calc_fib(num - 2)
#   end
# end
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

p fibs(8)
p fibs_rec(8)
