class Entry
  attr_reader :first_name,
              :last_name,
              :email,
              :zipcode,
              :city,
              :state,
              :address,
              :phone

  def initialize(data)
    @first_name    = data[:first_name].to_s.downcase
    @last_name     = data[:last_name].to_s.downcase
    @email_address = data[:email_address].to_s.downcase
    @zipcode       = data[:zipcode]
    @city          = data[:city].to_s.downcase
    @state         = data[:state].to_s.downcase
    @address       = data[:address].to_s.downcase
    @home_phone    = data[:home_phone]
  end
end
