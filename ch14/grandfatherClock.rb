def call_block &block
	hour = (Time.new.hour)%12
	if (hour==0)
		hour = 12
	end
	hour.times do
		block.call
	end
end

call_block do
puts 'DONG!'
end