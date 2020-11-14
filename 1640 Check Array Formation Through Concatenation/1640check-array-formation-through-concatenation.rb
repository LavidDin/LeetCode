# @param {Integer[]} arr
# @param {Integer[][]} pieces
# @return {Boolean}
def can_form_array(arr, pieces)
  pieces.sort_by { |piece| piece.first}
  pieces.each do |i|
    return false if !arr.include?(i.first) || arr[arr.index(i.first)...(arr.index(i.first)+i.length)] != i
  end
  true
end