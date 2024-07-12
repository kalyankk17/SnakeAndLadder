require_relative 'snake'

class SnakeManager
	include GameHelper

	def initialize(board)
		@board = board
	end 

	def init_snakes
		puts "Please enter number of snakes"
		snakes_count = gets.chomp.to_i
		puts "Please enter snakes details"
		snakes_count.times do |snake|
		puts "Please enter head and tail "
		input = gets.chomp.to_s.split
		@board.snakes << Snake.new(input[0],input[1])
		end 
	end 

  	def setup_snakes
  		@board.snakes.each do |snake|
		    if snake.head.between?(1, game_board_size)
		    	cell = @board.cells.find { |cell| cell.index == snake.head }
		    	cell.snake = snake
		    end
		end 
  	end 
end 