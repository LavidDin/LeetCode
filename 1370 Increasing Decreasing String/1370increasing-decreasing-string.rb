# @param {String} s
# @return {String}
def sort_string(s)
  sort = []
  s = s.chars.sort
  forward = true

  until s.empty?
    new_chars = forward ? s.uniq : s.uniq.reverse
    sort += new_chars
    new_chars.each { |c| s.delete_at(s.index(c)) }
    forward = !forward
  end

  sort.join('')
end