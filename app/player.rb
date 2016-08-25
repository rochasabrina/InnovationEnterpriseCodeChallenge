class Player
  include Math

  GRAVITY = 9.81
  VELOCITY = 10
  DIRECTIONS = [:left, :right]

  attr_accessor :weapon_angle  

  def initialize
    @weapon_angle = 45
  end

  def set_angle value
    @weapon_angle = value
    normalize_angle
  end

  def calculate_impact_point
    ((2 * Math.cos(angle_radians) * Math.sin(angle_radians) * VELOCITY ** 2) / GRAVITY).round 2
  end

  private
  def angle_radians
    @weapon_angle * Math::PI / 180 
  end

  def normalize_angle
    @weapon_angle = 90 if @weapon_angle > 90
    @weapon_angle = 0 if @weapon_angle < 0
  end
end