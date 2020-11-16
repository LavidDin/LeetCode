# @param {Integer} x
# @return {Integer}
def my_sqrt(x)
  return 1 if x == 1 || x == 2
  
  left = 1
  right = x

  while left < right
    mid = left + ((right-left)/2).floor
    if mid * mid == x
      return mid
    elsif mid * mid > x
      right = mid
    elsif mid * mid < x
      left = mid + 1
    end
  end

  left - 1
end