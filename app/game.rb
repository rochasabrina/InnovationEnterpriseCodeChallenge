require './app/player.rb' 
require './app/alien.rb'

class Game

  attr_reader :ripley, :alien

  def initialize
    @ripley = Player.new
    @alien = Alien.new
  end

  def set_player_angle angle 
    @ripley.set_angle(angle)
  end

  def set_player_angle_offset value
    @ripley.set_angle(@ripley.weapon_angle + value)
  end

  def is_over?
    position = @ripley.calculate_impact_point
    over = (@alien.position - position).abs.between?(0, 0.5)
    @alien.move if !over
    over
  end
end
