class Order
	TAX_TABLE = {"CO" => 0.02, "MT" => 0.0, "AZ" => 0.04 }

	attr_reader :email, :total, :state, :status

	def initialize(email, state, total, status=:pending)
		@email = email
		@total = total 
		@state = state
		@status = status
	end

	def tax
		total * TAX_TABLE[state]
	end

	def to_s 
		"#{email} (#{state}): $#{total} - #{status}"
	end
end

orders = []
orders << Order.new("customer1@example.com", "MT", 300)
orders << Order.new("customer2@example.com", "CO", 400, :completed)
orders << Order.new("customer3@example.com", "AZ", 200)
orders << Order.new("customer4@example.com", "CO", 100, :completed)

# results = orders.partition {|o| o.status == :pending }
# p results
# [[#<Order:0x007f9044849960 @email="customer1@example.com", @total=300, @state="MT", @status=:pending>, #<Order:0x007f9044849870 @email="customer3@example.com", @total=200, @state="AZ", @status=:pending>], [#<Order:0x007f90448498e8 @email="customer2@example.com", @total=400, @state="CO", @status=:completed>, #<Order:0x007f90448497f8 @email="customer4@example.com", @total=100, @state="VA", @status=:completed>]]
# puts results[0]
# puts results[1]
pending, completed =  orders.partition {|o| o.status == :pending }

puts "Pending"
puts pending
puts "Completed"
puts completed

big, small = orders.partition { |o| o.total > 200 }
puts "big"
puts big
puts "small"
puts small

puts "Emails into array"
emails = orders.map { |e| e.email }
puts emails

puts "Taxes"
co_orders = orders.select {|o| o.state == "CO"}.map {|o| o.tax }
p co_orders

puts "Total of all orders"
# iterate over all orders and accummalate all totals
total = 0
orders.each {|o| total += o.total }
puts "Total: #{total}"

puts orders.reduce(0) {|sum, o| sum += o.total  }

total_tax = orders.map {|o| o.tax }.reduce(&:+)
puts total_tax

total_all = orders.reduce(0) {|sum, o| sum += (o.total + o.tax)}
p total_all












