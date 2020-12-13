# @param {Integer} n
# @return {Integer}
def number_of_matches(n)
  match_count = 0

  until n == 1
    if n.odd?
      match_count += ((n-1) / 2) + 1
      n = (n-1) / 2
    else
      match_count += n / 2
      n = n / 2
    end
  end

  match_count
end