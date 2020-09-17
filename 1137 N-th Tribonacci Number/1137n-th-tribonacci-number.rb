# @param {Integer} n
# @return {Integer}
def tribonacci(n)
  trib_arr = [0, 1, 1]
    
    if n < 3
      return  (n == 0 ? 0 : 1)
    end

    (3...n).each do |i|
      trib_arr << trib_arr.sum
      trib_arr.shift
    end
    trib_arr.sum
end