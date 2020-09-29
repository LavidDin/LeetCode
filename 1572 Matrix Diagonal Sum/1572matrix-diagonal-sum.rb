# @param {Integer[][]} mat
# @return {Integer}
def diagonal_sum(mat)
  sum = 0
  l = mat.length
  (0...l).each do |i|
    sum += mat[i][i]
    sum += mat[i][l-1-i]
  end
  sum -= mat[l/2][l/2] if l % 2 == 1

  sum
end