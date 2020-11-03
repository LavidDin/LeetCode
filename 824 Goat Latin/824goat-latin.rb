# @param {String} s
# @return {String}
def to_goat_latin(s)
  sentence = []
  s = s.split(' ')

  s.each_with_index do |word, i|
    if ['a', 'e', 'i', 'o', 'u'].include?(word[0].downcase)
      word = word + 'm' + 'a' * (i+2)
    else
      word = word[1..-1] + word[0] + 'm' + 'a' * (i+2)
    end
    sentence << word
  end
  sentence.join(' ')
end