def three_consecutive_odds(arr)
  (0...arr.length-2).each do |i|
    return true if arr[i].odd? && arr[i+1].odd? && arr[i+2].odd?
  end
  false
end