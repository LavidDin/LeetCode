# @param {Integer[]} nums
# @return {Integer}
def sum_of_unique(nums)
  sum = 0
  nums.each { |i| sum += i if nums.count(i) == 1 }
  sum
end