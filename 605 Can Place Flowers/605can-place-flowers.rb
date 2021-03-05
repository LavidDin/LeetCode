# @param {Integer[]} flowerbed
# @param {Integer} n
# @return {Boolean}
def can_place_flowers(flowerbed, n)
  return true if n == 0
  flowerbed.unshift(0)
  flowerbed << 0
  c = 0

  (1...flowerbed.size-1).each do |i|
    if flowerbed[i-1] + flowerbed[i] + flowerbed[i+1] == 0
      flowerbed[i] = 1
      c += 1
    end
    return true if c == n
  end

  false
end