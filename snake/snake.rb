class Snake
	attr_accessor :head, :tail

	def initialize(head,tail)
		@head = head.to_i 
		@tail = tail.to_i
	end 
end 