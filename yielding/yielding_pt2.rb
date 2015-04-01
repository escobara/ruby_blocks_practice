def roll
	number = rand(1..6)
	result = yield("Larry", number)
	puts "The block returned #{result}"
end

roll do |name, number|
	puts "#{name} rolled a #{number}"
	number * 2
	# "Hello"
end
# Starting Method
# Rene rolled a 3
# Larry rolled a 3
# John rolled a 3
# Kim rolled a 3
# Back in Method

# The Block Does One Thing, the method does another
