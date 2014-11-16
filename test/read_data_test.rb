require_relative 'test_helper'

class ReadDataTest < Minitest::Test
  def test_read_data
    cli = CLI.new
    cli.call "find state MD"
    cli.call "queue save to state_sample.csv"
    cli.call "quit"
    cli.call "load state_sample.csv"
    cli.call "find first_name John"
    assert_equal 4, cli.call("queue count")
  end

end
