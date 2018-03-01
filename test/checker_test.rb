require 'minitest/autorun'
require 'minitest/pride'
require './lib/sequence'
require './lib/checker'
require './lib/game'
require 'pry'

class CheckerTest < Minitest::Test

  def test_there_is_checker
    checker = Checker.new

    assert_instance_of Checker, checker
  end

  def test_it_can_accept_code
    checker = Checker.new("rrgb")

    assert
  end
end
