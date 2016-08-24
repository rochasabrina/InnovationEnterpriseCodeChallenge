require './game.rb' 

def end_game
  puts 'The Alien is dead!'
exit
end

def print_instructions
  puts 'Kill the Alien!'
  puts 'use a number to set the shooting angle (in degrees)'
  puts 'use s for shoot'
  puts 'use t for status'
  puts 'use e for exit'
  print_player_status 
  print_alien_status
end

def print_alien_status
  puts "alien position               #{@game.alien.position}"
end

def print_player_status
  puts "player weapon angle          #{@game.player.weapon_angle}"
  puts "impact point                 #{@game.player.calculate_impact_point}"
end

def is_number? string
  true if Float(string) rescue false
end

@game = Game.new
print_instructions

while true do
  command = gets.chomp
  if is_number? command
    angle = command.to_f
    @game.set_player_angle(angle)
  else
    case command
      when 's'
        print_player_status
        end_game if @game.is_over?
        print_alien_status
      when 't'
        print_status
      when 'e'
        exit
      else
        puts 'invalid option!'
    end
  end
end
