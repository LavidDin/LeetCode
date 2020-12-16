# @param {Integer[]} arr1
# @param {Integer[]} arr2
# @param {Integer} d
# @return {Integer}
def find_the_distance_value(arr1, arr2, d)
  arr1.count { |i| arr2.all? { |j| (i-j).abs > d } }
end