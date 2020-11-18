# @param {String} paragraph
# @param {String[]} banned
# @return {String}
def most_common_word(paragraph, banned)
    words = paragraph.scan(/\w+/)
    
    words.map! { |word| word.downcase }
    banned.each { |ban| words.delete(ban) }

    words.max_by { |word| words.count(word) } 
end