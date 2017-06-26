def shuffle_wrapper arr
	i=0
	temp = []
	(arr.length).times do
		temp.push i
		i=i+1
	end
	shuffle temp, [], arr
end

def shuffle unused, shuffled_arr, arr
	n=rand(unused.length)
	shuffled_arr.push arr[unused[n]]
	i=n
	while i<unused.length-1
		unused[i]=unused[i+1]
		i=i+1
	end
	unused.pop
	if unused == []
		return shuffled_arr
	end
	shuffle unused, shuffled_arr, arr
end

puts 'Input anything. To stop, press Enter on a blank line.'
words = []
while true
	word = gets.chomp
	if word == ''
		break
	end
	words.push word
end

puts shuffle_wrapper words
