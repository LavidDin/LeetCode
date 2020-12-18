# @param {Integer[]} bills
# @return {Boolean}
def lemonade_change(bills)
  fives = 0
  tens = 0

  bills.each do |bill|
    if bill == 5
      fives += 1
    elsif bill == 10 && fives > 0
      fives -= 1
      tens += 1
    elsif bill == 20 && (tens > 0  && fives > 0)
      tens -= 1
      fives -= 1
    elsif bill == 20 && fives >= 3
      fives -= 3
    else
      return false
    end
  end

  true
end