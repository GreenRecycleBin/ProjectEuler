#!/usr/bin/ruby -w

require 'Date'

# Return the number of day of week (Sunday-Saturday, 0 - 6) that
# startDays on a date of a month startDay day to endDay day
def numDayOfWeekOnDate(day, date, startDay, endDay)
  num_days = 0
  startDay += 1 until startDay.wday == day

  startDay.step(endDay, 7) do |aDate|
    num_days = num_days.next if (aDate.mday == date)
  end

  num_days
end

p numDayOfWeekOnDate(0, 1, Date.new(1901, 1, 1), Date.new(2000, 12, 31))
