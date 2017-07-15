class Raindrops
	def self.convert(n)
		rain = ""
		if (n%3==0)
			rain = rain + 'Pling'
		end
		if (n%5==0)
			rain = rain + 'Plang'
		end
		if (n%7==0)
			rain = rain + 'Plong'
		end
		if (rain=="")
			rain = n.to_s
		end
		rain
	end
end

class RequiredClass
	def self.requiredMethod
	end
end

module BookKeeping
	VERSION = 3
end