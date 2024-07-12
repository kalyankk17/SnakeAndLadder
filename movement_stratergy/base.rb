class Base
	def move(player, roll, cell)
      raise NotImplementedError, "#{self.class} has not implemented method '#{__method__}'"       
	end 
end 