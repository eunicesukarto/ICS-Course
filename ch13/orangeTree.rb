class OrangeTree
	def initialize
		@age = 0
		@tree_height = 0
		@orange_count = 0
	end
	def height
		@tree_height
	end
	def count_the_oranges
		@orange_count
	end
	def pick_an_orange
		if (@orange_count>=1)
			@orange_count = @orange_count - 1
			puts "The orange was delicious."
		else
			puts "No more oranges to pick this year."
		end
	end
	def one_year_passes
		@age = @age + 1
		if (@age>100)
			puts "Your tree dies."
			exit
		end
		if (@age>=7&&@age<=12)
			@orange_count = 10
		elsif (@age>12)
			@orange_count = 20
		end
		@tree_height = @tree_height + 10
	end
end
