# @param {Integer} x
# @return {Integer}
def reverse(x)
  negative = x > 0 ? false : true
  x*= -1 if negative

  if negative 
    reversed_x = x.to_s.split('').to_a.reverse.join.to_i * -1
  else
    reversed_x = x.to_s.split('').to_a.reverse.join.to_i
  end

  return reversed_x if (negative && reversed_x > -2147483648) || reversed_x < 2147483647 && reversed_x > 0

  return 0
end