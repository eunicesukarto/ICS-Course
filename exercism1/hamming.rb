class Hamming
	def self.compute(str1, str2)
		if (str1.length!=str2.length)
			"Different length."
		else
			diff = 0
			i=0
			while (i<=str1.length-1)
				if (str1[i]!=str2[i])
					diff = diff+1
				end
				i = i+1
			end
			diff
		end
	end
end

class RequiredClass
	def self.requiredMethod
	end
end

module BookKeeping
	VERSION = 3
end