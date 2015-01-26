require 'date'
require 'time'

class Gigasecond
  def self.from(day)
    @gigas = 10**9
    day.to_time if gigaday.is_a? Date
    temp = day+@gigas
    gigaday = Date.new(temp.year,temp.mon,temp.day)
  end
end
