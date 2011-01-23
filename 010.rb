#!/usr/bin/ruby

def euler_sieve(max)
#	Make a list of integers, making sure to only check candidates below sqrt(n)
	integers = (2..max).to_a
	(2..(max**0.5).floor).each{|n|
		next if integers[n-2].nil?
		to_delete = []

		(n..(max/n).floor).each{|i|
			next if integers[i-2].nil?
			to_delete << (n*i) - 2
		}
		to_delete.each{|d|
			integers[d] = nil
			}
		}
	return integers.compact
end
primes = euler_sieve(2000000)
puts primes.inject{|r,e| r+e}

