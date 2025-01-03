# @param {Integer[]} nums
# @return {Integer}
def ways_to_split_array(nums)
    count = 0
    n = nums.length
    total_sum = nums.sum

    prefix_sums = Array.new(n,0)
    prefix_sums[0] = nums[0]
    (1...n).each do |i|
        prefix_sums[i] = prefix_sums[i-1] + nums[i]
    end

  (0...n-1).each do |i|
    left_sum = prefix_sums[i]
    right_sum = total_sum - left_sum
    count += 1 if left_sum >= right_sum
  end

  count
end

