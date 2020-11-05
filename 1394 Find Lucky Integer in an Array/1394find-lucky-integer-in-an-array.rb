# @param {Integer[]} arr
# @return {Integer}
def find_lucky(arr)
  freq = Hash.new(0)
  arr.each { |i| freq[i] += 1 }
  freq.keys.select { |k| k == freq[k] }.max || -1
end