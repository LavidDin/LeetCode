# @param {Integer[]} arr
# @return {Void} Do not return anything, modify arr in-place instead.
def duplicate_zeros(arr)
    zero_index = []
    arr_length = arr.length
    
    (0..arr.length-1).each do |i|
      zero_index << i if arr[i] == 0
    end

    (0..zero_index.length-1).each do |i|
      zero_index[i] =  zero_index[i] + i
    end

    zero_index.each do |i|
      arr.insert(i+1, 0)
    end
    
    arr.slice!(arr_length..-1)

    return
end