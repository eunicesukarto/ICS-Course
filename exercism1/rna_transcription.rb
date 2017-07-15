class Complement
	def self.of_dna(dna)
		i = 0
		while (i<=dna.length-1)
			if (dna[i]=='G')
				dna[i] = 'C'
			elsif (dna[i]=='C')
				dna[i] = 'G'
			elsif (dna[i]=='T')
				dna[i] = 'A'
			elsif (dna[i]=='A')
				dna[i] = 'U'
			else
				dna = ""
				break
			end
			i = i+1
		end
		dna
	end
end

class RequiredClass
	def self.requiredMethod
	end
end

module BookKeeping
	VERSION = 4
end