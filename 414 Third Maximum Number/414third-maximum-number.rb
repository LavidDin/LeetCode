# @param {Integer[]} nums
# @return {Integer}
def third_max(nums)
  nums.uniq.sort.length >= 3 ? nums.uniq.sort[-3] : nums.max
end