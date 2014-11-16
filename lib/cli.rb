require 'printer'
require 'entry_collection'

class CLI
  attr_reader :stdin, :stdout, :user_input

  def initialize(stdin, stdout)
    @stdin = stdin
    @stdout = stdout
    @user_input = ""
    @entry_collection = EntryCollection.new
  end

  def call
    @user_input = stdin.gets.strip.downcase
  end


  def load?
    @user_input.split[0] == 'l' || @user_input.split[0] == 'load'
  end

  def help_load?
    @user_input.split[0..1] == ['help', 'load']
  end

  def help_queue_clear?
    @user_input.split[1..2] == ['queue', 'clear']
  end

  def help_queue_print?
    @user_input.split[1..2] == ['queue', 'print']
  end

  def help_queue_save?
    @user_input.split[1..2] == ['queue', 'save']
  end

  def quit?
    @user_input.split[0] == 'q' || @user_iinput.split[0] == 'quit'
  end

  def queue?
    @user_input.split[0] == 'queue'
  end

  def queue_save?
    @user_input.split[0..1] == ['queue', 'save']
  end

  def count?
    @user_input.split[0] == 'c' || @user_input.split[0] == 'count'
  end

  def queue_clear?
    @user_input.split[0] == ['queue', 'clear']
  end

  def queue_print?
    @user_input.split[0] == ['queue', 'print']
  end

  def help?
      @user_input.split[0] == 'h' || @user_input.split[0] == 'help'
  end

  def help_find?
    @user_input.split[1] == 'find'
  end

  def help_queue_count?
    @user_input.split[1..2] == ['queue', 'count']
  end

# queue print by attribute
# queue save to filename.csv
# find attribute criteria

end
