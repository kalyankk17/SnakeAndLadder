require_relative 'player'

class PlayerManager

  def initialize(game)
    @game = game 
  end 

  def setup_players
    puts "Please enter number of players:"
    players_count = gets.to_i
    if players_count <= 0
      puts "Invalid number of players. Setting to 2 by default."
      players_count = 2
    end
    puts "Please enter players' details:"
    players_count.times { |index| add_player(index) }
  end

  private

  def add_player(index)
    puts "Enter name for player #{index + 1}:"
    name = gets.chomp
    @game.players << Player.new(name)
  end
end 