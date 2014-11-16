require_relative 'test_helper'

class SavingTest < Minitest::Test
  def test_saving
    cli = CLI.new
    cli.call "load"
    cli.call "find city Salt Lake City"
    assert_equal 13, cli.call("queue count")

    cli.call "queue save to city_sample.csv"
    # Open the CSV and inspect that it has correct headers and the data rows from step 3.

    cli.call "find state DC"
    cli.call "queue print by last_name"
    # should print them alphabetically by last name

    cli.call "save to state_sample.csv"
    # Open the CSV and inspect that it has the headers, the data from step 7, but not the data previously found in step 2.
  end
end
