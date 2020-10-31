# @param {Integer[]} nums
# @return {Integer}
def max_product(nums)
  sort = nums.sort
  (sort[-1]-1)*(sort[-2]-1)
end