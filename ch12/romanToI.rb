numbers = {}
	numbers['M'] = [7, 1000]
	numbers['D'] = [6, 500]
	numbers['C'] = [5, 100]
	numbers['L'] = [4, 50]
	numbers['X'] = [3, 10]
	numbers['V'] = [2, 5]
	numbers['I'] = [1, 1]
def check_letter letter
	if (letter=='M') || (letter=='D') || (letter=='C') || (letter=='L') || (letter=='X') || (letter=='V') || (letter=='I')
		check = true
	else
		check = false
	end
end
def num x, numbers
	i = 0
	same = 1
	order = true
	while i<=x.length-1
		check = check_letter x[i]
		if (check==false)
			return "Invalid number."
		end
		i = i+1
	end
	i=0
	n=0
	while i<=x.length-2
		if (numbers[x[i]][0]%2==1)
			if (numbers[x[i]][0]<numbers[x[i+1]][0]-2) || ((numbers[x[i]][0]<numbers[x[i+1]][0])&&(same>1))
				order = false
			end
		else
			if (numbers[x[i]][0]<numbers[x[i+1]][0])
				order = false
			end
		end
		if (x[i]==x[i+1])
			same = same+1
		else
			same = 1
		end
		if ((numbers[x[i]][0]%2==1)&&(same>3)) || ((numbers[x[i]][0]%2==0)&&(same>1)) || (order==false)
			return "Invalid number."
		end
		if (numbers[x[i]][0]<numbers[x[i+1]][0])
			n = n-numbers[x[i]][1]
		else
			n = n+numbers[x[i]][1]
		end
		i = i+1
	end
	n = n+numbers[x[i]][1]
end
number = gets.chomp.upcase
result = num number, numbers
puts result