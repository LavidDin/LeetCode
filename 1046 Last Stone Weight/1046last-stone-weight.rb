# @param {Integer[]} stones
# @return {Integer}
def last_stone_weight(stones)
  until stones.length <= 1
    stones.sort!
    y = stones.pop
    x = stones.pop
    stones << y-x if x < y 
  end

  stones[0] ? stones[0] : 0
end