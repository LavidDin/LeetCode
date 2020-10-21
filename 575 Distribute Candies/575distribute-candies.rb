#575. Distribute Candies
# @param {Integer[]} candies
# @return {Integer}
def distribute_candies(candies)
  return candies.uniq.length if candies.uniq.length <= candies.length/2
  return candies.length/2 if candies.uniq.length > candies.length/2
end