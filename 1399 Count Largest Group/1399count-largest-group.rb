# @param {Integer} n
# @return {Integer}
def count_largest_group(n)
  a = Hash.new { |h, k| h[k] = [] }
  max,count = 0, 0
  (1..n).each { |i| a[i.digits.sum] << i }
  a.each { |k,v| max = v.size if v.size > max }
  a.each { |k,v| count += 1 if v.size == max }

  count
end