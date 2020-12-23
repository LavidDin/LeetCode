# @param {Integer[]} a
# @param {Integer[]} b
# @return {Integer[]}
def fair_candy_swap(a, b)
    dif = (a.sum - b.sum) / 2
    hash = a.each_with_object({}) { |x, obj| obj[x - dif] = x }
    b.each { |x| return [hash[x], x] unless hash[x].nil? }
end
