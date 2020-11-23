# @param {Integer[]} deck
# @return {Boolean}
def has_groups_size_x(deck)
  return false if deck.size == 1
  hash = Hash.new(0)
  deck.each { |card| hash[card] +=1 }

  hash.values.each_cons(2) do |i, j|
    return false unless j.gcd(i) > 1
  end

  true
end