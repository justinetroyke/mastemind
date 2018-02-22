class Sequence

  def initialize
    colors = ["b","g","r","y"]
    colors.sample(4 + rand(colors.count))
  end
end
