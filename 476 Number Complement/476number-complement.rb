# @param {Integer} num
# @return {Integer}
def find_complement(num)
    num_to_binary = num.to_s(2)
    num_to_binary_arr = num_to_binary.split('')
    
    num_to_binary_arr.each.with_index do |x, i|
      if x == '1'
        num_to_binary_arr[i] = '0'
      else
        num_to_binary_arr[i] = '1'
      end
    end

    complement = num_to_binary_arr.join('')
    return complement.to_i(2)
end