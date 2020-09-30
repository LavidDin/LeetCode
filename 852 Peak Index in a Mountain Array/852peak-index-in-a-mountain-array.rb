# @param {Integer[]} arr
# @return {Integer}
def peak_index_in_mountain_array(arr)
  (1...arr.length-1).each do |i|
    return i if (arr[i-1] < arr[i]) && (arr[i] > arr[i+1])
  end
end