# @param {String[]} a
# @return {String[]}
def common_chars(a)
  letters = Hash.new(0)
  a.first.each_char {|char| letters[char] += 1}

  a.each do |word|
    letters.keys.map { |k| letters[k] = [letters[k], word.count(k)].min }
  end
  
  return letters.map { |k, v| k*v }.join.split("")
end