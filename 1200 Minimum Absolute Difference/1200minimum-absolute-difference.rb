# @param {Integer[]} arr
# @return {Integer[][]}
def minimum_abs_difference(arr)
  arr.sort!
  min_diff = Float::INFINITY
  diff_arr = []

  (0...arr.length-1).each do |i|
    diff = (arr[i+1] - arr[i]).abs

    if diff < min_diff
      min_diff = diff
      diff_arr = [[arr[i], arr[i+1]]]
    elsif diff == min_diff
      diff_arr << [arr[i], arr[i+1]]
    end
  end

  diff_arr
end
