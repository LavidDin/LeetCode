# @param {Integer} n
# @param {Integer} start
# @return {Integer}
def xor_operation(n, start)
    result = start
    for i in 1...n
        result = result ^ (start + 2*i)
    end
    return result
end
