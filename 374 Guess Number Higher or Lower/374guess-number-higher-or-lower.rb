# The guess API is already defined for you.
# @param num, your guess
# @return -1 if my number is lower, 1 if my number is higher, otherwise return 0
# def guess(num)

def guessNumber(n)
  left = 1
  right = n
  pick = n/2

  while left <= right
    result = guess(pick)
    return pick if result == 0

    if result == 1
        left = pick + 1
    else
        right = pick - 1
    end
    pick = (left + right) / 2
  end
end