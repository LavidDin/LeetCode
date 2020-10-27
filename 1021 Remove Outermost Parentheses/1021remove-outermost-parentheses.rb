# @param {String} s
# @return {String}
def remove_outer_parentheses(s)
  result = []
  open = 0

  s.each_char do |c|
    result << c unless  (open == 0 && c == "(") || (open == 1 && c == ")")
    open += 1 if c == "("
    open -= 1 if c == ")"
  end
  result.join
end