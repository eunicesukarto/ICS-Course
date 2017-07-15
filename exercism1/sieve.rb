class Sieve
	def initialize n
		@num = []
		i = 2
		while (i<=n)
			@num.push i
			i = i+1
		end
	end
	def primes
		i = 0
		p = 2
		while(i<=@num.length-1)
			#Mark the multiples
			j = i+1
			while(j<=@num.length-1)
				if(@num[j]%p==0)
					@num[j] = 0
				end
				j = j+1
			end
			#Find the next available number
			j = i+1
			while(@num[j]==0&&j<=@num.length-1)
				j = j+1
			end
			i = j
			p = @num[i]
		end
		prime_list = []
		@num.each do |number|
			if(number!=0)
				prime_list.push number
			end
		end
		prime_list
	end
end

class RequiredClass
	def self.requiredMethod
	end
end

module BookKeeping
	VERSION = 1
end