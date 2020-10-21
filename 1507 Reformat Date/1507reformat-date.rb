# @param {String} date
# @return {String}
def reformat_date(date)
  output = []
  date_arr = date.split(' ').reverse
  month = {"Jan"=>"01", "Feb"=>"02", "Mar"=>"03", "Apr"=>"04", "May"=>"05", "Jun"=>"06",
           "Jul"=>"07", "Aug"=>"08", "Sep"=>"09", "Oct"=>"10", "Nov"=>"11", "Dec"=>"12"}

  output << date_arr[0]
  output << month[date_arr[1]]
  date_string = date_arr[2].split('')
  day = date_string[0]
  
  if date_string[1] == "s" || date_string[1] == "n" || date_string[1] == "r" || date_string[1] == "t"
    day.prepend('0')
  else
    day << date_string[1]
  end

  output << day
  output.join('-')
end