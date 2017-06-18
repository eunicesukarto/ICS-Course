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
			num_string = num_string + ' and '
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
			num_string = num_string + ' and '
		end
	end
	num_string
end

puts (english_number gets.to_i)