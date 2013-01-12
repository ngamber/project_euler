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

# horizontal check

x=0
while x < size
	y = 0
	while y <= size-product_length
		product = array[x][y]*array[x][y+1]*array[x][y+2]*array[x][y+3]
		if product > maxProduct
			maxProduct = product	
		end
		y += 1
	end
	x += 1
end

puts "Max horizontal product: ",maxProduct

x=0
while x < size 
        y = 0
        while y <= size-product_length 
                product = array[y][x]*array[y+1][x]*array[y+2][x]*array[y+3][x]
                if product > maxProduct
                        maxProduct = product
                end
                y += 1
        end
        x += 1
end

puts "Max vertical product: ",maxProduct
