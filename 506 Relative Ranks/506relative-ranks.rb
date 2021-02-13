# @param {Integer[]} score
# @return {String[]}
def find_relative_ranks(score)
  sorted = score.sort.reverse
  results = []
  
  score.each do |score|
    i = sorted.index(score)
    if i == 0
      results << "Gold Medal"
    elsif i == 1
      results << "Silver Medal"
    elsif i == 2
      results << "Bronze Medal"
    else
      results << (i+1).to_s
    end
  end

  results
end