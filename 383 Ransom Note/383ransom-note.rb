# @param {String} ransom_note
# @param {String} magazine
# @return {Boolean}
def can_construct(ransom_note, magazine)
  magazine = magazine.split('')
  ransom_note.each_char do |c|
    return false unless magazine.include?(c)
    magazine.delete_at(magazine.index(c))
  end

  true
end
