# @param {Integer[]} nums
# @return {Integer}
def find_length_of_lcis(nums)
  c = 0
  max = 0

while c < nums.size
  temp = 1
  while c + 1 < nums.size && nums[c] < nums[c + 1]
    temp += 1
    c += 1
  end
  max = temp if temp > max
  c += 1
end

  max
end