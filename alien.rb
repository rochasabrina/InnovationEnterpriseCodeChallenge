include Math

class Alien

  DIRECTIONS = [:left, :right]

  attr_reader :position  

  def initialize
    @position = [*1..10].sample
  end

  def move
    direction = DIRECTIONS.sample
    steps = direction == :left ? -1 : 1
    @position = @position + steps
  end
end