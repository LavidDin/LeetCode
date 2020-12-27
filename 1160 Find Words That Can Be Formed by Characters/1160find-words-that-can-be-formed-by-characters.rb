# @param {String[]} words
# @param {String} chars
# @return {Integer}
def count_characters(words, chars)
  count = 0

  words.each do |word|
    word = word.split('')
    count += word.length if word.none? do |char|
      word.count(char) > chars.count(char)
    end
  end

  count
end