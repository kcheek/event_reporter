require_relative 'test_helper'

class EmptinessTest < Minitest::Test
  def test_emptiness_of_queue
    cli = CLI.new
    cli.call "find last_name Johnson"
    assert_equal 0, cli.call("queue count")
    assert_empty cli.call("queue print")

    cli.call "queue clear"
    assert_equal 0, cli.call("queue count")

    cli.call "queue print by last_name"
    assert_equal 0, cli.call("queue count")

#     CLI.call "queue save to empty.csv"
# queue save to empty.csv should output a file with only headers
#     assert_equal 0, CLI.call("queue count")
  end
end
