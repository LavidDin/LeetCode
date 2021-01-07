# @param {String} path
# @return {Boolean}
def is_path_crossing(path)
  crossed = [[0,0]]

  path.each_char do |p|
    current = []
    current[0] = crossed.last[0]
    current[1] = crossed.last[1]
    if p == "N"
      current[0] += 1
    elsif p == "S"
      current[0] -= 1
    elsif p == "E"
      current[1] += 1
    else
      current[1] -= 1
    end
    
    crossed << current
  end

  crossed.uniq != crossed
end