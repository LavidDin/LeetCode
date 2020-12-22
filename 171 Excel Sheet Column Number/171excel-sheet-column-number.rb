# @param {String} s
# @return {Integer}
def title_to_number(s)
  alpha = ('A'..'Z').to_a
  col_number = 0

  s.chars.reverse.each_with_index do |char, i|
    col_number += (alpha.index(char) + 1 ) * (26 ** i)
  end
  col_number
end