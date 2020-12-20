# @param {Character[][]} board
# @return {Integer}
def num_rook_captures(board)
  captures = 0
  rook_pos = []

  board.each_with_index do |r, idx|
    if r.index("R") != nil
      rook_pos = [idx, r.index("R")]
    end
  end

  row = rook_pos[0]
  col = rook_pos[1]

  row.downto(0).each do |i|
    x = board[i][col]
    if x == "p" || x == "B"
      captures += 1 if x == "p"
      break
    end
  end

  row.upto(7).each do |i|
    x = board[i][col]
    if x == "p" || x == "B"
      captures += 1 if x == "p"
      break
    end
  end

  col.downto(0).each do |i|
    x = board[row][i]
    if x == "p" || x == "B"
      captures += 1 if x == "p"
      break
    end
  end

  col.upto(7).each do |i|
    x = board[row][i]
    if x == "p" || x == "B"
      captures += 1 if x == "p"
      break
    end
  end

  captures
end