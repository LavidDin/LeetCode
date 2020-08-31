# @param {String} str
# @return {String}
def to_lower_case(str)
  arr = []
  str.each_char do |char|
    if char.ord < 97 && char.ord > 64
      lower = char.ord + 32
      arr << lower.chr
    else
      arr << char
    end
  end

   arr.join('')  
end