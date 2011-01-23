#!/usr/bin/ruby

#A Pythagorean triplet is a set of three natural numbers, a < b < c, for which,
#a^(2) + b^(2) = c^(2
#Find the triplet for which a+b+c=1000

def triplet_check(a,b,c)
	if a**2+b**2 == c**2
		return true
	else
		return false
	end
end

#it's much less expensive, computationally, to do the check of the sum before the check of the sum of the squares. 

(1..425).each do |k|   #the highest value of c is trivial to solve...
	(2..k).each do |j|
		(3..j).each do |i|
			if i + j + k == 1000
				if triplet_check(i,j,k)
					puts i,j,k
				end
			end
		end
	end
end
