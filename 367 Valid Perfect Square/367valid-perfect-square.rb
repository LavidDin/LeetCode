# @param {Integer} num
# @return {Boolean}
def is_perfect_square(num)
  return true if num == 1
  
  left = 1
  right = num

  while left <= right
    mid = left + ((right-left)/2).floor

    if mid * mid == num
      return true
    elsif mid * mid < num
      left = mid + 1
    elsif mid * mid > num
      right = mid - 1
    end
  end
  
  false
end