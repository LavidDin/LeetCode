# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
  arr = (digits.join('').to_i + 1).to_s.split('').map(&:to_i)
    
  arr.unshift(0) if digits[0] == 0 && digits.length > 1

  arr
end