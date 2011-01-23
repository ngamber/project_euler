#!/usr/bin/ruby


multiples=Array.new

for i in 1..999
	if i%3 == 0
		multiples << i
	elsif i%5 == 0
		multiples << i 
	else
		puts i," is not divisible by 3 or 5!"
	end
end
sum = 0
multiples.each{ |x| 
	sum += x
	puts sum	
	}

puts "the sum of the multiples of 3 or 5 up to 1000 is ",sum

