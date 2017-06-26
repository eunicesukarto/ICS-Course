def shuffle_wrapper arr
	shuffle [], arr
end

def shuffle shuffled_arr, arr
	if arr == []
		return shuffled_arr
	else
		n=rand(arr.length-1)
		shuffled_arr.push arr[n]
		temp = arr[n]
		arr[n] = arr[arr.length-1]
		arr[arr.length-1] = temp
		arr.pop
		shuffle shuffled_arr, arr
	end
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
