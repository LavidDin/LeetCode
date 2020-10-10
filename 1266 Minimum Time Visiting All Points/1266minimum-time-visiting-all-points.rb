# @param {Integer[][]} points
# @return {Integer}
def min_time_to_visit_all_points(points)
    seconds = 0
    (0...points.length-1).each do |i|
      x = (points[i+1][0] - points[i][0]).abs
      y = (points[i+1][1] - points[i][1]).abs
      x > y ? seconds += x : seconds += y
    end
    return seconds
end