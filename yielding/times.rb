# 3.times {|n| puts "#{n} Echo"}

def three_times
	i = 0
	while i < 3
		yield(i)
		i+=1
	end

end

three_times {|n| puts "#{n} Echo"}

def n_times(n)
	i = 0 
	while i < n
		yield i 
		i+= 1		
	end
end

# n_times(10) {|n| puts "#{n} Echo"}

class Integer
	def n_times
		i = 0 
		while i < self
			yield i 
			i+= 1		
		end
	end
end

10.n_times {|n| puts "#{n} Echo" }

weekdays = ["monday", "tuesday", "wednesday", "thursday", "friday", "saturday"]

class Array
	def my_each
		i = 0
		while i <= self.size
			yield self[i]
			i+= 1		
		end
	end
end

weekdays.each {|d| puts d.upcase }
