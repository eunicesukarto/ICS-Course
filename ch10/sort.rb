def sort_wrapper words
	sort_words words, []
end

def sort_words unsorted, sorted
	if unsorted == []
		return sorted
	else 
		min = unsorted[0]
		min_index = 0
		i=1
		while i<=unsorted.length-1
			if min.downcase>unsorted[i].downcase
				min = unsorted[i]
				min_index = i
			end
			i=i+1
		end
		unsorted[min_index] = unsorted[unsorted.length-1]
		unsorted[unsorted.length-1] = min
		unsorted.pop
		sorted.push min
		sort_words unsorted, sorted
	end
end

puts 'Type in as many words as you want (one word per line, continuing until you just press Enter on an empty line)'
words = []
while true
	word = gets.chomp
	if word == ''
		break
	end
	words.push word
end

puts sort_wrapper words
