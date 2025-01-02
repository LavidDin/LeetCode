# @param {String[]} words
# @param {Integer[][]} queries
# @return {Integer[]}
def vowel_strings(words, queries)
  vowels = 'aeiou'
  
  # Helper method to check if the first and last characters of a word are vowels
  def is_vowel_boundary(word, vowels)
    vowels.include?(word[0]) && vowels.include?(word[-1])
  end

  prefix_sum = Array.new(words.size + 1, 0)
  
  words.each_with_index do |word, i|
    prefix_sum[i + 1] = prefix_sum[i] + (is_vowel_boundary(word, vowels) ? 1 : 0)
  end

  results = []

  queries.each do |query|
    l, r = query
    results << prefix_sum[r + 1] - prefix_sum[l]
  end

  results
end

