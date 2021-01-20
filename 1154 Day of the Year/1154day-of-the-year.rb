# @param {String} date
# @return {Integer}
require 'date'
def day_of_year(date)
   new_date = Date.parse(date)
   new_date.yday
end