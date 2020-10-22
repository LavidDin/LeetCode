# @param {Integer} num_bottles
# @param {Integer} num_exchange
# @return {Integer}
def num_water_bottles(num_bottles, num_exchange)
  bottles_drank = num_bottles
  leftover = num_bottles

  while leftover >= num_exchange
    bottles_drank += leftover / num_exchange
    leftover = leftover / num_exchange + leftover % num_exchange
  end
  bottles_drank
end