def english_number n
	if n<0
		return 'Please enter a non-negative number.'
	end
	if n == 0
		return 'zero'
	end
	num_string = ''
	ones_place = ['one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine']
	tens_place = ['ten', 'twenty', 'thirty', 'forty', 'fifty', 'sixty', 'seventy', 'eighty', 'ninety']
	teenagers = ['eleven', 'twelve', 'thirteen', 'fourteen', 'fifteen', 'sixteen', 'seventeen', 'eighteen', 'nineteen']
	
	num_string, write = (big_numbers num_string, n, 1000000000000, ' trillion'), n/1000000000000
	left = n-(write*1000000000000)
	num_string, write = (big_numbers num_string, left, 1000000000, ' billion'), left/1000000000
	left = left-(write*1000000000)
	num_string, write = (big_numbers num_string, n, 1000000, ' million'), n/1000000 
	left = n-(write*1000000)
	num_string, write = (big_numbers num_string, left, 1000, ' thousand'), left/1000
	left = left-(write*1000)
	num_string, write = (big_numbers num_string, left, 100, ' hundred'), left/100
	left = left-(write*100)
	
	write = left/10
	left = left - write*10
	if write>0
		if (write==1 and left>0)
			num_string = num_string + teenagers[left-1]
			left = 0
		else
			num_string = num_string + tens_place[write-1]
		end
		if left>0
			num_string = num_string + ' '
		end
	end
	
	write = left
	left = 0
	if write>0
		num_string = num_string + ones_place[write-1]
	end
	
	return num_string
end

def big_numbers num_string, left, exp, exp_string
	write = left/exp
	left = left - write*exp
	if write>0
		num = english_number write
		num_string = num_string + num + exp_string
		if left>0
			num_string = num_string + ' '
		end
	end
	num_string
end

n=9999
s1=' bottles of beer on the wall'
s2=' bottles of beer.'
s3='Take one down and pass it around, '
while true
    puts (english_number n).capitalize + s1+ ', ' + (english_number n) + s2
	n=n-1
	puts s3 + (english_number n) + s1 + '.'
	puts
	if n==2
	    break
	end
end
puts 'Two bottles of beer on the wall, two bottles of beer.'
puts 'Take one down and pass it around, one more bottle of beer on the wall.'
puts 'One bottle of beer on the wall, one bottle of beer.'
puts 'Take one down and pass it around, no more bottles of beer on the wall.'
puts
puts 'No more bottles of beer on the wall, no more bottles of beer.'
puts 'Go to the store and buy some more, ninety nine bottles of beer on the wall.'