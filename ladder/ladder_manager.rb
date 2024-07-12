require_relative 'ladder'

class LadderManager
	include GameHelper

	def initialize(board)
		@board = board
	end


	def init_ladders
		puts "Please enter number of ladders"
		ladders_count = gets.chomp.to_i
		puts "Please enter ladders details"
		ladders_count.times do |ladder|
		 puts "Please enter tail and head "
         input = gets.chomp.to_s.split
         @board.ladders << Ladder.new(input[0],input[1])
		end
	end 


  	def setup_ladders
  		@board.ladders.each do |ladder|
	    if ladder.tail.between?(1, game_board_size)
	       cell = @board.cells.find { |cell| cell.index == ladder.tail }
		   cell.ladder = ladder
	    end
	  end
  	end 	
end 