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

  def response
    r = io.gets.strip
    if r == "q"
      quit
    elsif r == "i"
      instructions
    elsif r == "p"
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
