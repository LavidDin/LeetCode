# @param {Integer[]} nums
# @return {Integer[]}
def find_error_nums(nums)
  sorted = nums.sort
  proper_nums = (1..nums.length).to_a
  errors = []

  (0...sorted.length-1).each do |i|
    errors << sorted[i] if sorted[i] == sorted[i+1]
  end
  errors << proper_nums - sorted

  errors.flatten
end