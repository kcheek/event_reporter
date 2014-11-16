require 'csv'

class EntryCollection

  def initialize(file="../data/event_attendees.csv")
    @contents = CSV.open(file, headers: true, header_converters: :symbol)
    @records = []
  end

end
