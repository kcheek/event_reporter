require 'test_helper'

class IntegrationTest < Minitest::Test
 def test_happy_path
   cli = CLI.new
   cli.call "load event_attendees.csv"
   assert_equal 0, cli.call("queue count")

   cli.call "find first_name John"
   assert_equal 63, cli.call("queue count")

   cli.call "queue clear"
   assert_equal 0, cli.call("queue count")

   help_screen = cli.call "help"
   assert_include help_screen, "count"

   queue_count_help_screen = cli.call("help queue count")
   assert_include queue_count_help_screen, "Displays the number of"
   refute_include queue_count_help_screen, "Prints each"

   queue_print_help_screen = cli.call("help queue print")
   assert_include queue_print_help_screen, "Prints each row in the queue"
   refute_include queue_print_help_screen, "Displays the number"
 end
end
