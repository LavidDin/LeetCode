# @param {String} allowed
# @param {String[]} words
# @return {Integer}
def count_consistent_strings(allowed, words)
  count = 0

  words.each do |word|
    count += 1 if word.split('').all? { |c| allowed.include?(c) }
  end

  count
end