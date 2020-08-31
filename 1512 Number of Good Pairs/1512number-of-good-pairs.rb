# @param {Integer[]} nums
# @return {Integer}
def num_identical_pairs(nums)
  pairs = 0

  (0...nums.length-1).each do |i|
    (1..nums.length).each do |j|
    pairs +=1 if nums[i] == nums[j] && i < j
    end
  end
  pairs
end