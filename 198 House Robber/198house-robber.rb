# @param {Integer[]} nums
# @return {Integer}
def rob(nums)
  return 0 if nums.empty?
  return nums[0] if nums.length == 1
  return [nums[0], nums[1]].max if nums.length == 2

  dp = []
  dp[0] = nums[0]
  dp[1] = [nums[0], nums[1]].max

  (2...nums.length).each do |i|
    dp[i] = [dp[i-1], dp[i-2] + nums[i]].max
  end

  dp.last
end