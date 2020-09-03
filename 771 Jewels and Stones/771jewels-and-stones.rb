# @param {String} j
# @param {String} s
# @return {Integer}
def num_jewels_in_stones(j, s)
  total_jewels = 0
    jewels = j.split('')
    s.each_char do |char|
      if jewels.include?(char)
        total_jewels +=1
      end
    end
  total_jewels
end