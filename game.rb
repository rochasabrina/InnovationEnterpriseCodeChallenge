require './player.rb' 
require './alien.rb'

class Game

  attr_reader :player, :alien

  def initialize
    @player = Player.new
    @alien = Alien.new
  end

  def set_player_angle angle 
    @player.set_angle(angle)
  end

  def is_over?
    position = @player.calculate_impact_point
    over = (@alien.position - position).abs.between?(0, 0.5)
    @alien.move if !over
    over
  end
end
