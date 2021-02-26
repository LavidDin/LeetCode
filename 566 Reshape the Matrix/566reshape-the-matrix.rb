# @param {Integer[][]} nums
# @param {Integer} r
# @param {Integer} c
# @return {Integer[][]}
def matrix_reshape(nums, r, c)
  m = nums.size
  n = nums[0].size
  return nums if m * n != r * c

  arr = []
  nums.flatten!

  r.times do |i|
    temp = []
    c.times { temp << nums.shift }
    arr << temp
  end

  arr
end