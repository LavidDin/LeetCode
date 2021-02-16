# @param {Integer[]} gain
# @return {Integer}
def largest_altitude(gain)
  altitudes = [0]
  gain.each { |i| altitudes << altitudes[-1] + i }
  altitudes.max
end