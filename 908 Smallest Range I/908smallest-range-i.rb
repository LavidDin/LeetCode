# @param {Integer[]} a
# @param {Integer} k
# @return {Integer}
def smallest_range_i(a, k)
  min = a.min
  max = a.max
  diff = max - min

  2 * k >= diff ? 0 : diff - 2 * k
end