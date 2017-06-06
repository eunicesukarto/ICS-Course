i=0
while true
    ans=gets.chomp
    if ans=='BYE'
	    i=i+1
	elsif ans==ans.upcase
	    i=0
	    n=1930+rand(21)
	    puts 'NO, NOT SINCE '+n.to_s+'!'
	else
	    i=0
	    puts 'HUH?! SPEAK UP, SONNY!'
	end
	if i==3
	    break
	end
end