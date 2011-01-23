#!/usr/bin/ruby


sum_of_squares = 0
(1..100).each do |i|
	sum_of_squares += i**2
end

square_of_sums = 5050**2 # invoking some math cred here (google gauss pairwise addition)

puts "the difference is: ",square_of_sums - sum_of_squares
