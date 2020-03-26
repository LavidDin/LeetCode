# @param {String[]} words
# @return {Integer}
def unique_morse_representations(words)
    morse_alpha = [".-","-...","-.-.","-..",".","..-.","--.","....","..",".---","-.-",".-..","--","-.","---",".--.","--.-",".-.","...","-","..-","...-",".--","-..-","-.--","--.."]
    alpha = ('a'..'z').to_a
    morse_array = []
    
    words.each do |word|
        morse_word = ''
        word.each_char do |char|
            char_index = alpha.index(char)
            morse_word += morse_alpha[char_index]
        end
        morse_array << morse_word
    end
    morse_array.uniq.length
end