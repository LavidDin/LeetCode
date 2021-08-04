# @param {Integer[]} nums
# @param {Integer} k
# @return {Boolean}
def contains_nearby_duplicate(nums, k)

  hash = {}
  (0...nums.length).each do |i|
    if hash.include?(nums[i]) && (hash[nums[i]] - i).abs <= k
      return true
    end
    hash[nums[i]] = i
  end

  false
end
