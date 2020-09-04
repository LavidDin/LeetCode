# @param {String} s
# @return {Integer}
def length_of_last_word(s)
    string_arr = s.split(' ')
    return string_arr[-1] ? string_arr[-1].length : 0
end