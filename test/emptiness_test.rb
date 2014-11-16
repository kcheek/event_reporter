require 'test_helper'

class EmptinessTest < Minitest::Test
  def test_emptiness_of_queue
    CLI = CLI.new
    CLI.call "find last_name Johnson"
    assert_equal 0, CLI.call("queue count")
    assert_empty CLI.call("queue print")

    CLI.call "queue clear"
    assert_equal 0, CLI.call("queue count")

    CLI.call "queue print by last_name"
    assert_equal 0, CLI.call("queue count")

#     CLI.call "queue save to empty.csv"
# queue save to empty.csv should output a file with only headers
#     assert_equal 0, CLI.call("queue count")
  end
end
