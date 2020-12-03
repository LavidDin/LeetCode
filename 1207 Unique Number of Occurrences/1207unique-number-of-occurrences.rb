# @param {Integer[]} arr
# @return {Boolean}
def unique_occurrences(arr)
  h = Hash.new(0)
  arr.each { |i| h[i] += 1 }
  h.values.uniq == h.values
end