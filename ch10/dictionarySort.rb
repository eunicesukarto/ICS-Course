def sort_wrapper words
	sort_words words, []
end

def sort_words unsorted, sorted
	unsorted1 = []
	min = unsorted[0]
	i=1
	while i<=unsorted.length-1
		if min.downcase>unsorted[i].downcase
			unsorted1.push min
			min = unsorted[i]
		else
			unsorted1.push unsorted[i]
		end
		i=i+1
	end
	sorted.push min
	if unsorted1 == []
		return sorted
	else
		sort_words unsorted1, sorted
	end
end