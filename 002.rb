#!/usr/bin/ruby

fibonacci = [1, 2]
upper_bound = 4000000
#while fibonacci.inject(0){|sum,item| sum + item} <= upper_bound OVERTHOUGHT THIS ONE JUST A BIT LOL
while fibonacci[-1] <= upper_bound
	new_element = fibonacci[-1] + fibonacci[-2]
	break if new_element >= upper_bound
	fibonacci << new_element
end
sum = 0
fibonacci.each{ |x|
	if x%2 == 0
		sum += x
	else
		puts "not even!"
	end
	}
puts sum
