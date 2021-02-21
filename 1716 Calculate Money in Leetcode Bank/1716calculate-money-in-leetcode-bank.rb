# @param {Integer} n
# @return {Integer}
def total_money(n)
  total = 0
  (0...n).each { |i| total += (i / 7) + (i % 7 + 1) }
  total
end