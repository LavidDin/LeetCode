# @param {Integer[]} a
# @return {Integer[]}
def sorted_squares(a)
  a.map { |i| i * i }.sort
end