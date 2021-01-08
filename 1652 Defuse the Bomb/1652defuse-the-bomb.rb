# @param {Integer[]} code
# @param {Integer} k
# @return {Integer[]}
def decrypt(code, k)
  decrypted = []

  if k == 0
    code.length.times { decrypted << 0}
    return decrypted
  end

  code.each_with_index do |num, i|
    key = 0

    (1..k.abs).each do |j|
      k.positive? ? index = i + j : index = i + code.length - j
      key += code[index % code.length]
    end

    decrypted << key
  end

  decrypted
end