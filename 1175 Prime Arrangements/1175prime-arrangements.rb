# @param {Integer} n
# @return {Integer}
require 'prime'
def num_prime_arrangements(n)
  return 1 if n == 1
    
  prime_count = (1..n).count(&:prime?)
  composite_count = n - prime_count

  (1..prime_count).inject(:*) * (1..composite_count).inject(:*) % (10**9 + 7)
end