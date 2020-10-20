# @param {Integer[]} nums
# @return {Integer}
def majority_element(nums)
  result = Hash.new(0)
  nums.each { |n| result[n] += 1 }
  return result.key(result.values.max) if result.values.max > nums.length/2
end