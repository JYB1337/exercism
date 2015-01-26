require 'date'
require 'time'

class Gigasecond
  def self.from(bday)
  @gigas = 10**9
    #while (@@gigas / (365*24*60*60)) >= 1
     # bday.leap? ? (@@gigas -= 366*24*60*60) (bday = bday.next_year) :(@@gigas -= 365*24*60*60) (bday = bday.next_year)
    #end
  bday = Date.new(bday.year,bday.month,bday.day) if bday.is_a? Time
  while (@gigas / (24*60*60)) >= 1
      @gigas -= 24*60*60
      bday = bday.next_day
  end    
  return bday
  end
end
