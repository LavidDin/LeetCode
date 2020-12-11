# @param {Integer[]} nums
# @param {Integer} k
# @return {Float}
def find_max_average(nums, k)
  current_arr = nums[0...k].sum
  max_arr = current_arr

  return max_arr.fdiv(k) if nums.length == k

  1.upto(nums.length-k).each do |i|
      current_arr = current_arr - nums[i-1] + nums[i+k-1]
      max_arr = current_arr if current_arr > max_arr
  end

  max_arr.fdiv(k)
end