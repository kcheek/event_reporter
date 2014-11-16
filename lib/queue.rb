require_relative 'entry_collection'  # => true

class Queue
  attr_reader :results, :attendees  # => nil

  def initialize(repo)
    @attendees = repo
    @results = []
  end

  def find(attribute, criteria)
    @attendees == []
    @results = @attendees.select {|attendee| attendee.send(attribute) == criteria}
  end

  def clear
    puts "Queu has been CLEARED."
    @results = []
  end

  def queu_print_by_attribute
    # sort by specified attr like zipcode. Possible case and when method

  end

  #Load file
  # def clean_zipcode(zipcode)
  #   zipcode.to_s.rjust(5,"0")[0..4]
  # end

  def save_to_file
    puts "It can save to external CSV file"
  end

  def help?
      @user_input.split[0] == 'h' || @user_input.split[0] == 'help'
  end

  def help_find?
    @user_input.split[1] == 'find'
  end

  def help_queue_count?
    @user_input.split[1..2] == ['queue', 'count']
  end

  def find_by_first_name(first_name)
    entry.select { |entry| entry.first_name == first_name}
  end

end
