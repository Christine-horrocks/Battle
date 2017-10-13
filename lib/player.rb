require 'game'

class Player
  attr_reader :name, :life

  def initialize(name, life)
    @name = name
    @life = life
  end

  # def attack(player)
  #   player.lose_points
  # end

  def lose_points
    @life -= 10
  end

end
