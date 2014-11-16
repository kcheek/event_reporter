require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/cli'

class CLITest < Minitest::Test

  attr_reader :cli

  def test_it_exists
    cli = Cli.new
    assert cli
  end

  def test_file_can_be_loaded
    file_load = CSV.open

  end








end
