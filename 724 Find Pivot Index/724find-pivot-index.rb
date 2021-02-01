# @param {Integer[]} nums
# @return {Integer}
def pivot_index(nums)
  right_sum = nums.sum
  left_sum = 0

  (0...nums.length).each do |i|
    right_sum -= nums[i]
    return i if left_sum == right_sum
    left_sum += nums[i]
  end

  return -1
end