# @param {String} s
# @param {Integer} k
# @return {String}
def reverse_str(s, k)
  arr = s.chars.each_slice(k).map{|c| c.join}
  (0...arr.size).step(2) { |i| arr[i] = arr[i].reverse }

  arr.join('')
end