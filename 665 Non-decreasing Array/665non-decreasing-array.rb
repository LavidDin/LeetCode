# @param {Integer[]} nums
# @return {Boolean}
def check_possibility(nums)
  count = 0
  (0..nums.length-1).each do |i|
    next if i == 0
    if nums[i-1] > nums[i]
      count += 1
      if i < 2 || nums[i-2] <= nums[i]
        nums[i-1] = nums[i]
      else
        nums[i] = nums[i-1]
      end
    end
  end
  count <= 1
end