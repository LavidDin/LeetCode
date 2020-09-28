# @param {Integer[][]} matrix
# @return {Integer[]}
def lucky_numbers (matrix)
    transposed = matrix.transpose
    lucky_nums = []

    matrix.each_with_index do |m, idx|
      m.each_with_index do |ele, idx2|
        lucky_nums << ele if (ele == m.min) && (transposed[idx2].max == ele)
      end
    end
    lucky_nums
end
