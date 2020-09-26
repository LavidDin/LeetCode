# @param {Integer[]} heights
# @return {Integer}
def height_checker(heights)
  sorted_heights = heights.sort
  count = 0

  (0...heights.length).each do |i|
    count += 1 if heights[i] != sorted_heights[i]
  end

  count
end