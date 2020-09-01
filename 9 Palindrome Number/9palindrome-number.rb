# @param {Integer} x
# @return {Boolean}
def is_palindrome(x)
  return false if x < 0 || (x % 10 == 0 && x != 0)

  reverted = 0
  while reverted < x
    reverted = reverted * 10 + x % 10
    x /= 10
  end

  reverted == x || reverted/10 == x
end