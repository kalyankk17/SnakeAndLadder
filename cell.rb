class Cell

	attr_accessor :index , :snake, :ladder

	def initialize(index = nil , snake = nil , ladder = nil)
		@index = index 
		@snake = snake
		@ladder = ladder
	end 
end 