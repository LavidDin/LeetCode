# @param {String} s
# @return {Boolean}
def halves_are_alike(s)
  vowels = ['a','e','i','o','u']
  first = s.downcase[0...(s.length / 2)]
  second = s.downcase[(s.length / 2)..-1]

  first.chars.count { |char| vowels.include?(char) } == second.chars.count { |char| vowels.include?(char )}
end