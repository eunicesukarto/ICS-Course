def roman_numeral x
	def times(x, i)
		letters = ['M', 'D', 'C', 'L', 'X', 'V', 'I']
		num = [1000, 500, 100, 50, 10, 5, 1]
		if (x%num[i-1])/num[i] <= 3
			letters[i]*((x%num[i-1])/num[i])
		else
			letters[i]+letters[i-1]
		end
	end
	return 'M'*(x/1000) + times(x, 1) + times(x, 2) + times(x, 3) + times(x, 4) + times(x, 5) + times(x, 6)
end