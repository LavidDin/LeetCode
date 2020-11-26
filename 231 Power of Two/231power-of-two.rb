# @param {Integer} n
# @return {Boolean}
def is_power_of_two(n)
  return false if n <= 0
  return true if n <= 2

  i = 1
  while i < n
    i *= 2
    return true if n == i
  end
  false
end