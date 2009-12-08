require 'rubygems'
require 'sinatra'

get '/' do 
  haml :index
end

class Youker
  attr_reader :players
  
  def initialize(player_count, player_names)
    @players = []
    player_count.times do |i|      
      player_name = "Player #{i+1}"
      player_name = player_names.shift unless player_names.empty?
      @players << Player.new(player_name)
    end
    
  end
end

class Player
  attr_reader :name
  def initialize(player_name)
    @name = player_name
  end
end