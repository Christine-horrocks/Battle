class Player
  attr_reader :name, :life

  def initialize(name, life)
    @name = name
    @life = life
  end

  def lose_points
    @life -= 10
  end

end
