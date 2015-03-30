
def run_my_block
	puts "Starting Method"
	yield 
	puts "Back in Method"
end


# run_my_block do 
# 	puts "Running block"
# 	puts "Running block"
# 	puts "Running block"
# 	puts "Running block"
# 	puts "Running block"
# 	puts "Running block"
# 	puts "Running block"
# 	puts "Running block"
# end


def roll
	puts "Starting Method"
	yield("Rene")
	puts "Back in Method"
end

roll do 
	number = rand(1..30)
	puts "You rolled a #{number}!"
end

# roll

# Times and Upto

roll do |name|
	number = rand(1..30)
	puts "#{name} rolled a #{number}!"
end