# @param {Integer[]} nums
# @param {Integer} n
# @return {Integer[]}
def shuffle(nums, n)
  arr1 = nums[0...n]
  arr2 = nums[n..-1]
  shuffled = []

    arr1.each.with_index do |x, i|
      shuffled << x
      shuffled << arr2[i]
    end
    return shuffled
end