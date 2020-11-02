# @param {Integer[]} a
# @return {Integer[]}
def sort_array_by_parity(a)
  output = []

  a.each { |i| i.even? ? output.unshift(i) : output.push(i) }
  output
end