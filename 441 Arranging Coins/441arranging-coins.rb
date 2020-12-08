# @param {Integer} n
# @return {Integer}
def arrange_coins(n, k = 1)
  n >= k ? arrange_coins(n-k, k+1) : k - 1
end