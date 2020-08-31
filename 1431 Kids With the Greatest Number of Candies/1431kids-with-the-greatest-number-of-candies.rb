# @param {Integer[]} candies
# @param {Integer} extra_candies
# @return {Boolean[]}
def kids_with_candies(candies, extra_candies)
    arr = []
    maxCandies = candies.max
    candies.each do |i|
      if i + extra_candies >= maxCandies
        arr << true
      else
        arr << false
      end
    end
    arr
end