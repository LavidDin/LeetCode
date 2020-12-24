# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  0.upto(prices.length-2).sum { |i| [prices[i+1] - prices[i], 0].max }
end