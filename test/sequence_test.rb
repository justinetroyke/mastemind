require 'minitest/autorun'
require 'minitest/pride'
require './lib/sequence'
require 'pry'

class SequenceTest < Minitest::Test

  def test_sequence_class_exists
    sequence = Sequence.new

    assert_instance_of Sequence, sequence
  end
end
