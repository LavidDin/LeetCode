# @param {String} s
# @return {String}
def freq_alphabets(s)
  s.gsub(/\d(\d#)?/) { |m| (m.to_i + 96).chr }
end
