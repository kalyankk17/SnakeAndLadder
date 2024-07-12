class Ladder
	attr_accessor :tail, :head

	def initialize(tail, head)
		@tail = tail.to_i
		@head = head.to_i
	end 
end 