weekdays = ["monday", "tuesday", "wednesday", "thursday", "friday", "saturday"]


weekdays.each do |day|
	puts day.capitalize
end
puts "========"
weekdays.map { |e| puts e.capitalize  }

puts "========"
dir = Dir.new("/Users/rene")
dir.each { |entry| puts entry unless entry.chars[0] == '.' }

