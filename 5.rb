#!/usr/bin/ruby

integers = (2..10).inject([]) {|r,e| r << e}


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

puts primes

#TODO code the actual finding of this stuff:
#inb4 derp (this is just the product of the least common multiples' prime trees [not that that's the proper 
#term or anything]
product = 2**4*3**2*5*7*11*13*17*19

puts product
