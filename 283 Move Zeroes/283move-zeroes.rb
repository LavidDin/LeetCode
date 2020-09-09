# @param {Integer[]} nums
# @return {Void} Do not return anything, modify nums in-place instead.
def move_zeroes(nums)
  zero_count = nums.count(0)
  nums.delete_if {|x| x==0}
  zero_count.times { nums << 0}
  nums
end