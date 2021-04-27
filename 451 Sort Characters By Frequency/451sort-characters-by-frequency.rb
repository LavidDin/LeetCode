# @param {String} s
# @return {String}
def frequency_sort(s)
  result = ""
  letter_freq = Hash.new { |h, k| h[k] = 0}

  s.each_char { |c| letter_freq[c] += 1 }

  letters = letter_freq.keys.sort_by { |k| letter_freq[k] }.reverse

  letters.each { |letter| result += letter * letter_freq[letter] }
    
  result
end