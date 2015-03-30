Order = Struct.new(:email, :total) do 

	def to_s
		"#{email} : $#{total}"
	end
end
orders = []
# 5.times do |i|
# 	orders << Order.new("customer#{i+1}@gmail.com", 10)
# end

# puts orders

1.upto(3) { |i| orders << Order.new("customer#{i+1}@gmail.com",  i*10) }
puts orders