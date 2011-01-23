#!/usr/bin/ruby

#ceiling = 998001

x = Array.new
for i in (100..999)
	x << i
end

starts = 0
last = 899

i = starts
c = 0
d = 0
while i <= last
	j = last
	while j >= starts
		c = x[i]*x[j]
		if (c.to_s.reverse == c.to_s and c > d)
			d = c
		end
		j -= 1
	end
i += 1
end		

puts d
