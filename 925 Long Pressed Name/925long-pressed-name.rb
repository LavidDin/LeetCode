# @param {String} name
# @param {String} typed
# @return {Boolean}
def is_long_pressed_name(name, typed)
  i = 0
  (0..typed.size-1).each do |j|
    if i < name.size && name[i] == typed[j]
      i += 1
    elsif not i > 0 && name[i-1] == typed[j]
      return false
    end
  end

  return i == name.size
end