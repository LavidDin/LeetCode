# @param {Integer[]} nums1
# @param {Integer[]} nums2
# @return {Integer[]}
def next_greater_element(nums1, nums2)
  result = []
  
  nums1.each_with_index do |ele, i|
    nums = nums2[nums2.index(ele)..-1]
    index = nums.index { |x| ele < x } || -1
    index === -1 ? result << index : result << nums[index]
  end

  result
end
