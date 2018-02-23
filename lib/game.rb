class Game

  attr_reader :sequence,
              :io

  def initialize(io:"")
    @sequence = "rrgb"
    @io = io
  end

  def start
    p intro
    p prompt
  end

  def intro
     "Welcome to MASTERMIND"
  end

  def prompt
    "Would you like to (p)lay, read the (i)nstructions, or (q)uit?"
  end

  def quit
    "Goodbye!!!"
  end

  def prompt_response
    response = io.gets.strip
    if response == "q"
      quit
    elsif response == "i"
      instructions
    elsif response == "p"
      play
    else
      prompt
    end
  end

  def instructions
    "Get it together"
  end

  def play
    "I have generated...guess?"
  end
end
