def old_roman_numeral x
	return 'M'*(x/1000) + 'D'*((x%1000)/500) + 'C'*((x%500)/100) + 'L'*((x%100)/50) + 'X'*((x%50)/10) + 'V'*((x%10)/5) + 'I'*(x%5)
end