# @param {String} s
# @return {Boolean}
def check_record(s)
  !(s.count("A") > 1 || s.include?("LLL"))
end