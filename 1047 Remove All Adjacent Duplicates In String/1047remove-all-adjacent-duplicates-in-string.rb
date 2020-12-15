# @param {String} s
# @return {String}
def remove_duplicates(s)
  chars = []

  s.each_char do |char|
    chars[-1] == char ? chars.pop : chars << char
  end

  chars.join('')
end