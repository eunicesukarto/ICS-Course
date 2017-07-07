class Die
	def initialize
		roll
	end
	def roll
		@number_showing = 1 + rand(6)
	end
	def showing
		@number_showing
	end
	def cheat num
		if (num>=1 && num<=6)
			@number_showing = num
		else
			puts "Invalid cheat number."
		end
	end
end

dice = Die.new
puts dice.showing
dice.cheat(gets.to_i)
puts dice.showing