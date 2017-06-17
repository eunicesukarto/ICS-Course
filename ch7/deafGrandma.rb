while true
    ans=gets.chomp
    if ans=='BYE'
	    break
	elsif ans==ans.upcase
	    n=1930+rand(21)
	    puts 'NO, NOT SINCE '+n.to_s+'!'
	else
	    puts 'HUH?! SPEAK UP, SONNY!'
	end
end
