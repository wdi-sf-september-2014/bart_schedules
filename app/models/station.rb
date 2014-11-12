class Station < ActiveRecord::Base
  has_many :departures

  def schedule
    # for each departure
    # concatenate the time
    # onto a string
    # return the string
    departures.map do |d|
      d.time
    end.join(', ')
  end
end
