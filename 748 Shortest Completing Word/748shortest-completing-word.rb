# @param {String} license_plate
# @param {String[]} words
# @return {String}
def shortest_completing_word(license_plate, words)
  alpha = ('a'..'z').to_a
  chars = []
  shortest = ''
  license_plate.each_char {|char| chars << char.downcase if alpha.include?(char.downcase)}


  words.each do |word|
    word_chars = word.split('')
    included = []
    chars.each do |char|
      if word_chars.include?(char)
        word_chars.delete_at(word_chars.index(char))
        included << char
      end
    end
    if chars.sort == included.sort && shortest.empty?
      shortest = word
    elsif chars.sort == included.sort && shortest.length > word.length
      shortest = word
    end
  end

  shortest
end