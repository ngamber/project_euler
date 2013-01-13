#!/usr/bin/env ruby

array = Array.new
IO.foreach('011.txt') { |line|
#	puts line
	subarray=Array.new
	subarray.push(line.split(' '))
	array.push(subarray.flatten.collect{ |s| s.to_i})
	}

product_length = 4
size = array.size
maxProduct = 0
maxHorizontal = 0
maxVertical = 0
maxForwardDiag = 0
maxBackwardDiag = 0
# horizontal check

x=0
while x < size
	y = 0
	while y <= size-product_length
		product = array[x][y]*array[x][y+1]*array[x][y+2]*array[x][y+3]
		if product > maxHorizontal
			maxHorizontal = product	
		end
		y += 1
	end
	x += 1
end

puts "Max horizontal product: ",maxHorizontal

# vertical check

x=0
while x < size 
        y = 0
        while y <= size-product_length 
                product = array[y][x]*array[y+1][x]*array[y+2][x]*array[y+3][x]
                if product > maxVertical
                        maxVertical = product
                end
                y += 1
        end
        x += 1
end

puts "Max vertical product: ",maxVertical

# Forward slash "\" check

x = 0
y = 0

while x <= size-product_length
	while y <= size-product_length
		product = array[y][x]*array[y+1][x+1]*array[y+2][x+2]*array[y+3][x+3]
		if product > maxForwardDiag
			maxForwardDiag = product
		end
		y += 1
	end
	x += 1
end	
	
puts "Max forward diagonal product: ",maxForwardDiag


# back diagonal "/" product

x = product_length-1
y = 0 

while x < product_length
	while y <= size-product_length
		product = array[y][x]*array[y-1][x-1]*array[y-2][x-2]*array[y-3][x-3]
		if product > maxBackwardDiag
			maxBackwardDiag = product
		end
		y += 1
	end
	x += 1
end

puts "Max backward diagonal product: ",maxBackwardDiag
