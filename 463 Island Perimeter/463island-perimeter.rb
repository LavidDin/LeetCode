# @param {Integer[][]} grid
# @return {Integer}
def island_perimeter(grid)
  p = 0
  (0...grid.size).each do |i|
    (0...grid[i].size).each do |j|
      if grid[i][j] == 1
        p += 4
        p -= 2 if i < grid.size-1 && grid[i+1][j] == 1
        p -= 2 if j < grid[i].size-1 && grid[i][j+1] == 1
      end
    end
  end
  p
end