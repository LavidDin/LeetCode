# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
    return 0 if prices.length < 2
    
    max_profit = 0
    min_price = prices[0]
    
    (1..prices.length - 1).each do |i|
        min_price = [min_price, prices[i-1]].min
        max_profit = [max_profit, prices[i] - min_price].max
    end
    
    max_profit
end