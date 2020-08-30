# @param {String} address
# @return {String}
def defang_i_paddr(address)
    arr = address.split('.')
    arr.join('[.]')
end