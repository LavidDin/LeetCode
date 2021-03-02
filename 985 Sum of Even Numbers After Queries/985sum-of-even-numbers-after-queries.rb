# @param {Integer[]} a
# @param {Integer[][]} queries
# @return {Integer[]}
def sum_even_after_queries(a, queries)
  even_sum = a.inject(0) { |sum, i| i.even? ? sum + i : sum }
    
  queries.map do |query|
    even_sum -= a[query[1]] if a[query[1]].even?

    if (a[query[1]] += query[0]).even?
      even_sum += a[query[1]]
    else
      even_sum
    end
  end
end