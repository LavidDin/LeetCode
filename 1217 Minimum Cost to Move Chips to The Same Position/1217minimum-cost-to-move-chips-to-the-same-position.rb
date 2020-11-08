# @param {Integer[]} position
# @return {Integer}
def min_cost_to_move_chips(position)
  [position.count(&:even?), position.count(&:odd?)].min
end