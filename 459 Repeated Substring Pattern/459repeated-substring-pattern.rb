# @param {String} s
# @return {Boolean}
def repeated_substring_pattern(s)
    return false if s.empty? || s.size == 1

    (0...s.size/2).each do |i|
      sub = s[0..i]
      if s.size % sub.size == 0
        return true if s == sub * (s.size/sub.size)
      end
    end

  false
end