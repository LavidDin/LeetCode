# @param {Integer[][]} box_types
# @param {Integer} truck_size
# @return {Integer}
def maximum_units(box_types, truck_size)
  units = 0

  box_types.sort_by! { |arr| arr[1] }.reverse!

  until truck_size == 0 || box_types.empty?
    if box_types[0][0] <= truck_size
      units += box_types[0][0] * box_types[0][1]
      truck_size -= box_types[0][0]
      box_types.shift
    else
      units += truck_size * box_types[0][1]
      truck_size = 0
    end
  end

  units
end