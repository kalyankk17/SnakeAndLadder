class Player
	attr_accessor :name, :position

	def initialize(name, position = 0 )
	  @name = name
	  @position = position
	end 

	def update_position(new_position)
      puts "#{@name} moves from #{@position} to #{new_position}"
      @position = new_position
    end
end 