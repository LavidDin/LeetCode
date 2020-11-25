# @param {Integer} n
# @return {Integer}
def climb_stairs(n)
  nums = [0,1]
  n.times { |i| nums << nums[-1] + nums[-2] }

  nums[-1]
end