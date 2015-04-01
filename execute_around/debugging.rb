magic_number = (23 - Time.now.hour) * Math::PI

puts "Got Here!"

magic_number = (23 - Time.now.hour) * Math::PI

puts "Result was #{magic_number}"


def with_debugging
	puts "Got Here!"
	result = yield
	puts "Result was #{result}"
end

with_debugging do
  magic_number = (23 - Time.now.hour) * Math::PI
end

def with_expectation(expectation) 
	puts "Running test..."
	result = yield
	if result == expectation
		puts "Passed"
	else
		puts "Failed"
		puts "Expected #{expectation}, but got #{result}."
	end
end

with_expectation(4) { 2 + 2 }

with_expectation(5) { 2 + 2 }


# Running test...
# Failed!
# Expected 5, but got 4.