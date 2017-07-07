$i = 0
def log desc, &block
	def indent n
		space = ''
		n.times do
			space = space + ' '
		end
		space
	end
	print indent $i
	puts "Beginning \"#{desc}\"..."
	$i = $i+1
	print (indent ($i-1)), "...\"#{desc}\" finished, returning: ", block.call
	puts
	$i = $i-1
end

log 'outer block' do
	log 'some little block' do
		log 'some stuff' do
			'what'
		end
		5
	end
	log 'yet another block' do
		'I like Thai food!'
	end
	false
end