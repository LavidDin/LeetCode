# @param {Integer[][]} logs
# @return {Integer}
def maximum_population(logs)
  population_h = Hash.new(0)
  
  logs.each do |person|
    (person[0]...person[1]).each do |year|
      population_h[year] += 1
    end
  end
  
  population_h.sort_by{|year, count| [-count, year]}.first[0]
end