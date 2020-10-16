# @param {String} s
# @return {Integer}
def max_power(s)
  power = 1
  s_arr = s.split('')

  i = 0
  while i < s_arr.length-1
    j = 1
    while s_arr[i] == s_arr[i+j]
      j += 1
      power = j if j > power
    end
    i += j
  end

  power
end