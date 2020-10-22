# @param {String} text
# @return {Integer}
def max_number_of_balloons(text)
  char_hash = { 'b'=>0, 'a'=>0, 'l'=>0, 'o'=>0, 'n'=>0 }

  text.each_char { |c| char_hash[c] += 1 if 'balloon'.include?(c)}
  char_hash['l'] /= 2
  char_hash['o'] /= 2

  #sorts hash by min value in an array and returns the second element(value) of the array
  char_hash.sort_by { |k, v| v}.first[1] 
end