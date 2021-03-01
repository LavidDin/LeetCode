# @param {Integer} n
# @param {Integer[]} rounds
# @return {Integer[]}
def most_visited(n, rounds)
  rounds[0] > rounds[-1] ?
    (1..rounds[-1]).to_a + (rounds[0]..n).to_a :
    (rounds[0]..rounds[-1]).to_a
end
