# @param {Integer[]} nums
# @return {Integer}
def missing_number(nums)
  sum = 0
  (0...nums.length).each do |idx|
      sum += (idx + 1 - nums[idx])
  end
  sum
end