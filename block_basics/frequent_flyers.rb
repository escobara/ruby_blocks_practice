Flyer = Struct.new(:name, :email, :miles_flown) do 
	def to_s
		"#{name} (#{email}): #{miles_flown}"
	end
end

alphabet = "ABCDE"
alphabet.chars do |flyer, index|
	puts Flyer.new("Flyer #{flyer}", "flyer#{flyer}@example.com", 1000 * (alphabet.chars.find_index(flyer)+1)).to_s
end

# 1.step(9, 2) do |flyer|
# 	puts Flyer.new("Flyer #{flyer}", "flyer#{flyer}@example.com", 1000*flyer).to_s
# end

flyers = []
1.upto(5) do |flyer|
	flyers << Flyer.new("Flyer #{flyer}", "flyer#{flyer}@example.com", 1000*flyer)
end

promotions = { "United" => 1.5, "Delta" => 2.0, "Lufthansa" => 2.5 }
flyers.each do |f|
	promotions.each do |airline, multiplier|
		puts "#{f.name} could earn #{f.miles_flown*multiplier} miles by flying #{airline}"
	end
end

sum = 0
flyers.each {|f| sum += f.miles_flown }
puts "Total Miles Flown: #{sum}"



promotions = { "United" => 1.5, "Delta" => 2.0, "Lufthansa" => 2.5 }

promotions.each do |k, v|
	puts "Earn #{v}x miles by flying #{k}!"
end


# Flyer 1 could earn 1500.0 miles by flying United!
# Flyer 1 could earn 2000.0 miles by flying Delta!
# Flyer 1 could earn 2500.0 miles by flying Lufthansa

desserts = { "chocolate" => 1.00, "vanilla" => 0.75, "cinnamon" => 1.25 }
desserts.each do |k|
	puts "$#{k[1]} for a cup of #{k[0]}"
end

team = "Broncos"
1.upto(4) do |number|
	team = "Bobcats"
	puts "#{number} Horray #{team}"
end
puts team 
