# @param {String} s
# @return {String}
def reverse_only_letters(s)
  alpha = ('a'..'z').to_a
  a = s.split('')
  letters = []

  a.each { |char| letters << char if alpha.include?(char.downcase) }
  letters.reverse!
  a.each_with_index {|char, i| a[i] = letters.shift if alpha.include?(char.downcase)}

  a.join('')
end