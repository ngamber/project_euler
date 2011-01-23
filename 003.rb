#!/usr/bin/ruby

#BTW, this shit takes forever to run, my factorization is balls slow :(

number = 600851475143

factors = Array.new

i = 1
while i <= number/2 # no factor of a number will be greater than half of the number... there's some additional juju to extend that statement to be a bit more useful, but I haven't the sauce at the moment
	if number%i == 0
#		puts i," is a factor of ",number
		factors << i
#	else 
#		puts i," is not a factor of ",number
	end
	i += 1
end 
#puts factors

integers = Array.new

j = 2
while j < number/2
	integers << j
	j += 1
end

primes = integers

prime_index = 0
p = integers[prime_index]

until integers[prime_index]**2 > integers[-1]
	p = integers[prime_index]
	primes.each{|x|
		if x != p && x%p == 0
		primes.delete(x)
		end		
		}
	prime_index += 1
end

answer = primes | factors
puts "The answer is: ",answer[-1]
