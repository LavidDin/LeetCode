# @param {Integer[]} nums
# @return {Integer}
def array_pair_sum(nums)
  nums.sort!

  nums.each_with_index.reduce(0) do |sum, (num, i)|
    i.even? ? sum + num : sum + 0
  end
end