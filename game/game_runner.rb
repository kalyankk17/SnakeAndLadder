require_relative 'game_helper'
require './movement_stratergy/movement_context'

class GameRunner

  include GameHelper

  def initialize(game)
  	@game = game
  end 


  def start
    loop do
      @game.players.each do |player|
        process_turn(player)
      end
    end
  end

  private

  def process_turn(player)
    prompt_for_dice_roll(player)
    number = roll_dice(player)
    MovementContext.new(player, number, @game.board).move
    announce_winner(player) if game_over?(player)
  end

  def prompt_for_dice_roll(player)
    puts "#{player.name}, roll the dice by pressing 'r'"
    input = gets.chomp.downcase
    unless input == 'r'
      puts "Invalid input. Please press 'r' to roll the dice."
      prompt_for_dice_roll(player) 
    end
  end

  def announce_winner(player)
    puts "#{player.name} has won!"
    exit
  end
end 