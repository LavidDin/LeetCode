# @param {String[][]} paths
# @return {String}
def dest_city(paths)
  hash = paths.to_h
  hash.values.each do |v|
    return v if !hash.keys.include?(v)
  end
end