require 'minitest/autorun'
require 'minitest/pride'
require '../lib/entry'

class EntryTest < Minitest::Test

    attr_reader :entry

  def setup

    @data = {
      first_name: 'sarah',
      last_name: 'xx',
      email_address: 'lqrm4462@jumpstartlab.com',
      home_phone: '9419792000',
      street: '4175 3rd street north',
      city: 'saint petersburg',
      state: 'fl',
      zipcode: '33703'
    }

    @entry = Entry.new(@data)

  end

  def test_data
    assert_equal entry.first_name, 'sarah'
    assert_equal entry.last_name, 'xx'
    assert_equal entry.email_address, 'lqrm4462@jumpstartlab.com'
    assert_equal entry.home_phone, '9419792000'
    assert_equal entry.street, '4175 3rd street north'
    assert_equal entry.city, 'saint petersburg'
    assert_equal entry.state, 'fl'
    assert_equal entry.zipcode, '33703'
  end


end
