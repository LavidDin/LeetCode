# @param {Integer[]} nums
# @return {Integer[]}
def frequency_sort(nums)
  arr = nums.each_with_object(Hash.new(0)){ |n ,h| h[n] += 1 }.sort_by{ |k,v| [v, -k] }
  total = []
  arr.each { |sub| sub[1].times { total << sub[0] } }

  total
end