# @param {String[]} a
# @return {Integer}
def num_special_equiv_groups(a)
  sorted = []
  a.each do |str|
    odd_chars = []
    even_chars = []
    str.each_char.with_index do |char, i|
      i.even? ? even_chars << char : odd_chars << char
    end
    sorted << (odd_chars.sort + even_chars.sort).join('')
  end

  sorted.uniq.length
end