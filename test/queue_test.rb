require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/queue.rb'
require_relative '../lib/entry_collection.rb'

class QueueTest < Minitest::Test

  def attendees
    @attendees = []
  end

  def test_it_exists
    queue = Queue.new(@attendees)
    assert Queue
  end

  def test_clears_results
    queue = Queue.new(@attendees)
    queue.clear
    assert_equal [], queue.results
  end

  def test_find_by_first_name
    
  end






end
