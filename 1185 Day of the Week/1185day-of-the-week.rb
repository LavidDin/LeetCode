# @param {Integer} day
# @param {Integer} month
# @param {Integer} year
# @return {String}
require 'date'

def day_of_the_week(day, month, year)
  Date.new(year,month,day).strftime('%A')
end