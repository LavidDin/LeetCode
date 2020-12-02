# @param {Integer[]} nums
# @return {Integer}
def find_shortest_sub_array(nums)
  h = Hash.new(0)
  nums.each { |n| h[n] += 1}
  max = h.values.max
  #return 1 if max == 1
  max_hash = Hash[h.select { |k, v| v == max}]

  max_hash.keys.map { |k| nums.rindex(k) - nums.index(k) + 1 }.min
end