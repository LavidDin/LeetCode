# @param {Integer[]} arr
# @return {Integer[]}
def array_rank_transform(arr)
  sorted = arr.uniq.sort
  rank = {}
  (0...sorted.length).each { |i| rank[sorted[i]] = i + 1 }

  arr.map {|x| rank[x]}
end