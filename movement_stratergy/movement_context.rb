require_relative 'ladder_climb'
require_relative 'snake_bite'
require_relative 'normal_move'

class MovementContext

	attr_accessor :player , :roll , :board

	def initialize(player, roll , board)
		@player = player
		@roll = roll
		@board = board
	end 

	def move
		pre_update = player.position + roll
		current_cell = board.cells.find { |cell| cell.index == pre_update }
		if current_cell.nil?
			puts "Not elligible to move forward"		
		elsif current_cell.ladder
			LadderClimb.new.move(player , roll , current_cell.ladder)
		elsif current_cell.snake	
			SnakeBite.new.move(player , roll , current_cell.snake)
		else 
			NormalMove.new.move(player , roll , current_cell)
		end
	end 
end