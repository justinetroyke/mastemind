require 'minitest/autorun'
require 'minitest/pride'
require './lib/game'
require 'pry'

class MastermindTest < Minitest::Test

  def test_there_is_a_game
    game = Game.new

    assert_instance_of Game, game
  end

  def test_it_initializes_with_a_sequence
    game = Game.new

    assert_equal "rrgb", game.sequence
  end

  def test_start_method_has_intro
    game = Game.new

    assert_equal "Welcome to MASTERMIND", game.intro
  end

  def test_start_method_has_prompt
    game = Game.new

    assert_equal "Would you like to (p)lay, read the (i)nstructions, or (q)uit?", game.prompt
  end

  def test_that_start_method_can_accept_quit_prompt_reply
    game = Game.new

    assert_equal "Goodbye!!!", game.quit
  end

  def test_response_of_q_calls_quit_method
    game = Game.new(io:StringIO.new("q"))

    assert_equal "Goodbye!!!", game.prompt_response
  end

  def test_start_method_can_accept_instruction_prompt_reply
    game = Game.new

    assert_equal "Get it together", game.instructions
  end

  def test_response_of_i_calls_instructions_method
    game = Game.new(io:StringIO.new("i"))

    assert_equal "Get it together", game.prompt_response
  end

  def test_start_method_can_accept_play_prompt_reply
    game = Game.new

    assert_equal "I have generated...guess?", game.play
  end

  def test_response_of_p_calls_instructions_method
    game = Game.new(io:StringIO.new("p"))

    assert_equal "I have generated...guess?", game.prompt_response
  end

  def test_invalid_response_goes_back_to_prompt
    game = Game.new(io:StringIO.new("z"))

    assert_equal "Would you like to (p)lay, read the (i)nstructions, or (q)uit?", game.prompt_response
  end

  def test_play_method_starts_with_play_prompt
    game = Game.new(io:StringIO.new("p"))

    assert_equal "I have generated...guess?", game.play_prompt
  end

  def test_play_has_quit_method
    game = Game.new
    game.play(io:StringIO.new("q"))

    assert_equal "Goodbye!!!", game.play(io:StringIO.new("q"))
  end

end
