# @param {String[][]} items
# @param {String} rule_key
# @param {String} rule_value
# @return {Integer}
def count_matches(items, rule_key, rule_value)
  if rule_key == "type"
    value = 0
  elsif rule_key == "color"
    value = 1
  else
    value = 2
  end

  items.count { |item| item[value] == rule_value }
end