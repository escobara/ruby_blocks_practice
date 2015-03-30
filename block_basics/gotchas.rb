# Variable only available inside the block
3.times do |number|
	name = "Moe"
	puts "#{number} Howdy, #{name}"
end

# 0 Howdy, Moe
# 1 Howdy, Moe
# 2 Howdy, Moe

name = "Rene"
number = 100
temp = Math::PI / 4

3.times do |number; temp|
	temp = 98.6
	puts "#{number} Howdy, #{name} is #{temp}"
end
# 0 Howdy, Rene
# 1 Howdy, Rene
# 2 Howdy, Rene
puts name 
puts temp

# Why is 