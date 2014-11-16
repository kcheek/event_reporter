require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/entry_collection'

class EntryCollectionTest < Minitest::Test

  def test_it_loads_a_file_by_default
    repo = EntryCollection.new
    assert repo
  end

  def test_it_loads_another_csv
    repo = EntryCollection.new("../data/test_data.csv")
    assert repo
  end

  def test_it_takes_other_csvs
    load1 = EntryCollection.new
    load2 = EntryCollection.new("../data/test_data.csv")
    refute_nil(load1, load2)  #hah, this works
  end

end
