require 'date'

random_number = rand(1..3)

may_first = DateTime.new(2015,5,1)
june_first = DateTime.new(2015,6,1)

days_in_may = (may_first...june_first).count

(may_first...june_first).include? Date.new(2015,5,2)
(may_first...june_first).include? DateTime.new(2015,5,2,23,59,59)

(may_first...june_first).cover? DateTime.new(2015,5,2,23,59,59)

