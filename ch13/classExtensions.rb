class Array
	def shuffle
		def shuffle_arr shuffled_arr, arr
			if arr == []
				return shuffled_arr
			else
				n=rand(arr.length-1)
				shuffled_arr.push arr[n]
				temp = arr[n]
				arr[n] = arr[arr.length-1]
				arr[arr.length-1] = temp
				arr.pop
				shuffle_arr shuffled_arr, arr
			end
		end
		shuffle_arr [], self
	end
end

class Integer
	def factorial
		if (self==0||self==1)
			1
		else
			n = self*((self-1).factorial)
		end
	end
end

class Integer
	def to_roman
		def times(x, i)
			letters = ['M', 'D', 'C', 'L', 'X', 'V', 'I']
			num = [1000, 500, 100, 50, 10, 5, 1]
			if (x%num[i-1])/num[i] <= 3
				letters[i]*((x%num[i-1])/num[i])
			else
				letters[i]+letters[i-1]
			end
		end
		return 'M'*(self/1000) + times(self, 1) + times(self, 2) + times(self, 3) + times(self, 4) + times(self, 5) + times(self, 6)
	end
end