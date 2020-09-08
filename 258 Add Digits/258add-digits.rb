# @param {Integer} num
# @return {Integer}
def add_digits(num)
  while num.to_s.length > 1
    digits = num.to_s.split('')
    num = digits.map(&:to_i).sum
  end
  num
end