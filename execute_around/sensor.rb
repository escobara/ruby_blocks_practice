class Sensor 

	def temperature
		rand(100..200)
	end

	def level
		rand(1..5)
	end



end

sensor = Sensor.new

def with_checking(description)
	puts "Checking #{description}"
	result = yield
	if result
		puts "OK"
	else
		puts "FAILED"
	end
end

with_checking("Checking Water Temperature...") do 
	sensor.temperature < 150
	sensor.level > 3
end

# This is used when you have to execute 
# something before and after a chunk of code
# Said another way, it's common to want to execute boilerplate code around—both 
# before and after—an arbitrary block of code.