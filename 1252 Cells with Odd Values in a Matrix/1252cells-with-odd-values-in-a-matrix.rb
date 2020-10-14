# @param {Integer} n
# @param {Integer} m
# @param {Integer[][]} indices
# @return {Integer}
def odd_cells(n, m, indices)
  matrix = Array.new(n) { Array.new(m, 0)}
  count = 0

  indices.each do |i|
    x = i[0]
    y = i[1]

    matrix[x].map!  { |v| v = v+1 }
    matrix.each { |n| n[y] = n[y] + 1}
  end

  matrix.each_with_index do |n, i|
    n.each do |v|
      count += 1 if v % 2 != 0
    end
  end

  count
end