require_relative 'game_runner'
require './player/player_manager'
require './board'

class Game
  attr_accessor :players, :board

  def initialize
    @players = []
  end

  def init
    puts "Welcome to Snakes and Ladders"
    puts "Please set up the game."
    setup_game
    start_game
  end

  private

  def setup_game
    setup_board
    setup_players
  end 

  def start_game
    GameRunner.new(self).start
  end 

  def setup_players
    PlayerManager.new(self).setup_players
  end 

  def setup_board
    @board = Board.new
    @board.config
  end
end