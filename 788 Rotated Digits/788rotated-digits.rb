# 788. Rotated Digits
# @param {Integer} n
# @return {Integer}
def rotated_digits(n)
  1.upto(n).count do |i|
    i = i.digits
    i.none? { |digit| [3, 4, 7].include?(digit) } && !i.all? { |digit| [0, 1, 8].include?(digit) }
  end
end