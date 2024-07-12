require_relative 'cell'
require_relative 'snake/snake_manager'
require_relative 'ladder/ladder_manager'

class Board
	include GameHelper
	attr_accessor :cells, :snakes, :ladders

	def initialize 
		@snakes = []
		@ladders = []
		@cells = Array.new(game_board_size) { |index| Cell.new(index + 1 , nil , nil) }
	end

	def config
		config_snakes
		config_ladders
	end

	def display
	    @cells.each_with_index do |cell, index|
	      puts "#{cell}\t"
	
	      puts "\n" if (index + 1) % 10 == 0
	    end
  	end  

  	private

  	def config_snakes
  		manager = SnakeManager.new(self)
  		manager.init_snakes
  		manager.setup_snakes
  	end 

  	def config_ladders
  		manager = LadderManager.new(self)
  		manager.init_ladders
  		manager.setup_ladders
  	end 
end 