# @param {String} s
# @return {String}
def reformat(s)
  alpha = ('a'..'z').to_a
  chars = []
  nums = []
  result = []
  
  s.each_char do |c|
    alpha.include?(c) ? chars << c : nums << c
  end

  if chars.count == nums.count || chars.count == (nums.count + 1)
    (0...s.length).each do |i|
      i.even? ? result << chars.shift : result << nums.shift
    end
  elsif (chars.count + 1) == nums.count
    (0...s.length).each do |i|
      i.even? ? result << nums.shift : result << chars.shift
    end
  else
    return ""
  end

  result.join('')
end