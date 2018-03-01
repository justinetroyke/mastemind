require 'pry'

class Sequence

  def initialize
    colors = ["r","g","b","y"]
    colors.map do |index|
      colors.sample
    end
  end
end
