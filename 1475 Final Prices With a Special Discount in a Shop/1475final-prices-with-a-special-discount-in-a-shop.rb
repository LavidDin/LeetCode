# @param {Integer[]} prices
# @return {Integer[]}
def final_prices(prices)
  final_prices = []

  prices.each_with_index do |e, i|
    j = i+1
    while j < prices.length
      if prices[j] <= e
        e -= prices[j]
        break
      end
      j += 1
    end
    final_prices << e
  end

  final_prices
end