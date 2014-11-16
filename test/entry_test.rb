require 'minitest/autorun'
require 'minitest/pride'
require '../lib/entry'

class EntryTest < Minitest::Test
  attr_reader :entry

  def entry_setup
    @data = {
      first_name: 'Allison',
      last_name: 'Nguyen',
      email_address: 'arannon@jumpstartlab.com',
      phone_number: '6154385000',
      zip_code: '20010',
      street: '3155 19th St NW',
      city: 'Washington',
      state: 'DC'
    }

    @entry = Entry.new(@data)
  end

  def test_entry
    assert_equal entry.first_name, 'Allison'
    assert_equal entry.last_name, 'Nguyen'
    assert_equal entry.email_address, 'arannon@jumpstartlab.com'
    assert_equal entry.phone_number, '6154385000'
    assert_equal entry.zip_code, '20010'
    assert_equal entry.street, '3155 19th St NW'
    assert_equal entry.city, 'Washington'
    assert_equal entry.state, 'DC'
  end
end
