# @param {String[]} words
# @return {String[]}
def find_words(words)
  r1 = 'qwertyuiop'
  r2 = 'asdfghjkl'
  r3 = 'zxcvbnm'

  words.select{|word| word.chars.all?{|c| r1.include?(c.downcase)} || word.chars.all?{|c| r2.include?(c.downcase)} || word.chars.all?{|c| r3.include?(c.downcase)}}
end