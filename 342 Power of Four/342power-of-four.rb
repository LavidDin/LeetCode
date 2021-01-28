# @param {Integer} n
# @return {Boolean}
def is_power_of_four(n)
  return false if n <= 0

  (0..n).each do |i|
    return true if 4 ** i == n
    return false if 4 ** i > n
  end
end