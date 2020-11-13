# @param {Integer[][]} matrix
# @return {Boolean}
def is_toeplitz_matrix(matrix)
  (0...matrix.length-1).each do |i|
    (0...matrix[i].length - 1).each do |j|
      return false if (matrix[i][j] != matrix[i + 1][j + 1])
    end
  end
  return true
end