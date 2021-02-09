# @param {Integer[]} distance
# @param {Integer} start
# @param {Integer} destination
# @return {Integer}
def distance_between_bus_stops(distance, start, destination)
  return 0 if start==destination
  start, destination = destination, start if start > destination
  return distance[start] if start+1 == destination

  c1 = distance[start...destination]
  c1.length.times {distance.delete_at(start)}

  [c1.sum,distance.sum].min
end