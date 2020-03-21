# @param {Integer} n
# @return {Integer}
def subtract_product_and_sum(n)
    num_arr = n.to_s.chars.map(&:to_i)
    sum_of_digits = num_arr.sum
    product_of_digits = num_arr.reduce(1, :*) 
    return product_of_digits - sum_of_digits
end