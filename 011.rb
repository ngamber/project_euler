#!/usr/bin/env ruby

array = Array.new
IO.foreach('011.txt') { |line|
#	puts line
	subarray=Array.new
	subarray.push(line.split(' ').to_int)
	array.push(subarray.flatten)
}

product_length = 4
size = array.size
product_biggest = 0

j=0
while j < size{
	i = 0
	while i <= size-product_length{
	if array[j][i]*array[j][i+1]*array[j][i+2]*array[j][i+3] < 
