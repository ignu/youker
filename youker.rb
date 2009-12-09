require 'rubygems'
require 'sinatra'

get '/' do 
  haml :index
end

class Youker
  attr_reader :players, :rounds
  
  def initialize(player_count, player_names)
    @players, @rounds = [], []
    player_count.times do |i|      
      player_name = "Player #{i+1}"
      player_name = player_names.shift unless player_names.empty?
      @players << Player.new(player_name)
      @rounds << Round.new
    end
    
  end
end

class Player
  attr_reader :name
  def initialize(player_name)
    @name = player_name
  end
end

class Round
end

class Scheduler
  def initialize(player_array)
    @players = player_array
  end
  def next_round
    @players.shuffle!
    player = @players.first
    partner = player.next_partner @players
    partner.add_partner player
    oponents = player.get_opponents @players
  end
end