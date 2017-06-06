puts 'Start year: '
start = gets.chomp.to_i
puts 'End year: '
finish = gets.chomp.to_i
year = start + (4-(start%4))%4
while year<=finish
	if !(year%100==0) || (year%400==0)
	    puts year
	end
	year = year + 4
end






