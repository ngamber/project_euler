#!/usr/bin/ruby

number = 600851475143

factors = Array.new

i = 1
while i < number/2
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
puts "The answer is: ",answer
