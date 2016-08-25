require 'sinatra'
require 'json'
require './app/game.rb' 

set :port, 8080
set :static, true
set :public_folder, "resources"
set :views, "views"
enable :sessions

get '/' do
  session[:game] = Game.new
  erb :index, :locals =>  { 'weapon_angle' => "#{session[:game].ripley.weapon_angle * -1}", 'alien_position' => "#{get_html_position session[:game].alien.position}" }
end

get '/increase_angle' do
  session[:game].set_player_angle_offset(1)
  content_type :json
  { :weapon_angle => "#{session[:game].ripley.weapon_angle * -1}" }.to_json
end

get '/decrease_angle' do
  session[:game].set_player_angle_offset(-1)
  content_type :json
  { :weapon_angle => "#{session[:game].ripley.weapon_angle * -1}" }.to_json
end

get '/shoot' do
  end_game = session[:game].is_over?
  content_type :json
  { :end_game => "#{end_game}", :explosion_position => "#{get_html_position session[:game].ripley.calculate_impact_point}", :alien_position => "#{get_html_position session[:game].alien.position}" }.to_json 
end

private

def get_html_position position
  position * 80 + 720
end
