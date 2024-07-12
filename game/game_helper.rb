module GameHelper

	def game_over?(player)
		player.position == 100
	end 

	def game_board_size
		100
	end 

    def roll_dice(player)
		number = rand(1..6)
	    puts "#{player.name} rolled a #{number}"
	    number
	end 
end 