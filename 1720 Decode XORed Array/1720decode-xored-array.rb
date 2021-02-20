# @param {Integer[]} encoded
# @param {Integer} first
# @return {Integer[]}
def decode(encoded, first)
  arr = [first]
  
  encoded.each do |i|
    xor =  arr[-1]^i
    arr << xor
  end

  arr
end