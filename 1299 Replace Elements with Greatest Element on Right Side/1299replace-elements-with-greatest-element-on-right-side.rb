# @param {Integer[]} arr
# @return {Integer[]}
def replace_elements(arr)
  (0...arr.length).each do |i|
    right_side_max = arr[i+1..-1].max
    arr[i] = right_side_max
  end
  arr[-1] = -1
    
  return arr
end