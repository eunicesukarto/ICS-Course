class Squares
	def initialize num
		@n = num
	end
	def square_of_sum
		@a = (@n*(@n+1)/2)**2
	end
	def sum_of_squares
		@b = @n*(@n+1)*(2*@n+1)/6
	end
	def difference
		square_of_sum
		sum_of_squares
		diff = @a - @b
	end
end

class RequiredClass
	def self.requiredMethod
	end
end

module BookKeeping
	VERSION = 4
end