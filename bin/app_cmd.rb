require './app/game.rb' 

def end_game
  puts 'The Alien is dead, Ripley Wins!'
  exit
exit
end

def print_instructions
  puts 'Ripley vs Alien'
  puts 'enter a number to set the shooting angle (in degrees)'
  puts 'enter s for shoot'
  puts 'enter t for status'
  puts 'enter e for exit'
  print_player_status 
  print_alien_status
end

def print_alien_status
  puts "Alien position               #{@game.alien.position}"
end

def print_player_status
  puts "Ripley weapon angle          #{@game.ripley.weapon_angle}"
  puts "impact point                 #{@game.ripley.calculate_impact_point}"
end

def is_number? string
  true if Float(string) rescue false
end

@game = Game.new
print_instructions

while true do
  command = gets.chomp
  if is_number? command #set the weapon angle
    angle = command.to_f
    @game.set_player_angle(angle)
  else
    case command
      when 's' #shoot
        print_player_status
        end_game if @game.is_over?
        print_alien_status
      when 't' #print status
        print_status
      when 'e' #exit the program
        exit
      else
        puts 'invalid option!'
    end
  end
end
