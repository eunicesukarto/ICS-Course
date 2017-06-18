n=99
s1=' bottles of beer on the wall'
s2=' bottles of beer.'
s3='Take one down and pass it around, '
while true
    puts n.to_s + s1+ ', ' + n.to_s + s2
	n=n-1
	puts s3 + n.to_s + s1 + '.'
	puts
	if n==2
	    break
	end
end
puts '2 bottles of beer on the wall, 2 bottles of beer.'
puts 'Take one down and pass it around, 1 more bottle of beer on the wall.'
puts '1 bottle of beer on the wall, 1 bottle of beer.'
puts 'Take one down and pass it around, no more bottles of beer on the wall.'
puts
puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, 99 bottles of beer on the wall.'
