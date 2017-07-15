class Pangram
	def self.pangram? (text)
		i = 0
		text = text.upcase
		used = []
		while (i<=text.length-1)
			if (text[i].ord>=65&&text[i].ord<=90)
				j = 0
				exist = false
				while (j<=used.length-1)
					if (used[j]==text[i])
						exist = true
						break
					end
					j = j+1
				end
				if (exist==false)
					used.push text[i]
				end
			end
			i = i+1
		end
		if (used.length==26)
			return true
		else
			return false
		end
	end
end

class RequiredClass
	def self.requiredMethod
	end
end

module BookKeeping
	VERSION = 4
end