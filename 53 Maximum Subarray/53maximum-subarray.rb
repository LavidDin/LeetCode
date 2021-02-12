# @param {Integer[]} nums
# @return {Integer}
def max_sub_array(nums)
  return nums[0] if nums.size == 1

  largest = nums[0]
  current = 0

  nums.each { |n| largest = [largest, current = [n, current+n].max].max }
  
  largest
end