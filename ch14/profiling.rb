def profile block_description, &block
	start_time = Time.new
	block.call
	duration = Time.new - start_time
	#to turn profiling off, delete "puts"
	puts "#{block_description}: #{duration} seconds"
end

#Another alternative:
def profile block_description, &block
	#to turn profiling off, set on to false
	on = true
	if(on==true)
		start_time = Time.new
		block.call
		duration = Time.new - start_time
		puts "#{block_description}: #{duration} seconds"
	end
end
