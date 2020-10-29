# @param {Integer} x
# @param {Integer} y
# @return {Integer}
def hamming_distance(x, y)
  x_to_b = x.to_s(2).split('')
  y_to_b = y.to_s(2).split('')
  distance = 0
  char_diff = (x_to_b.length - y_to_b.length).abs

  if char_diff != 0
    if x_to_b.length < y_to_b.length
      char_diff.times { x_to_b.unshift('0') }
    else
      char_diff.times { y_to_b.unshift('0') }
    end
  end

  0.upto(x_to_b.length) { |i| distance += 1 if x_to_b[i] != y_to_b[i] }

  distance
end