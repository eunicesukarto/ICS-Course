def log desc, &block
	puts "Beginning \"#{desc}\"..."
	print "...\"#{desc}\" finished, returning: ", block.call
	puts
end

log 'outer block' do
	log 'some little block' do
		log 'some other stuff' do
			puts 'what'
		end
		5
	end
	log 'yet another block' do
		'I like Thai food!'
	end
	false
end