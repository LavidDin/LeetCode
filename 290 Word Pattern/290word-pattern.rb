# @param {String} pattern
# @param {String} s
# @return {Boolean}
def word_pattern(pattern, s)
  a = []
  h = {}
  letters = pattern.split('')
  words = s.split(' ').uniq

  letters.uniq.each_with_index { |c, i| h[c] = words[i] }
  letters.each {|c| a << h[c] }
  
  a.join(' ') == s
end