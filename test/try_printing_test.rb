require_relative 'test_helper'

class TryPrintingTest < Minitest::Test
  def test_try_printing
    cli = CLI.new
    cli.call "load"
    assert_equal 0, cli.call("queue count")

    cli.call "find first_name John"
    cli.call "find first_name Mary"
    assert_equal 16, cli.call("queue count")

    cli.call "print by last_name"
  # queue print by last_name should print the same attendees sorted alphabetically by last name
    assert_equal 16, cli.call("queue count")
  end

end
