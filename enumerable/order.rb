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
orders << Order.new("customer4@example.com", "VA", 100, :completed)


puts "Big Orders"
puts orders.select {|o| o.total >= 300 }
puts "Small Orders"
puts orders.select {|o| o.total <= 300 }

big_orders, small_orders = orders.partition {|o| o.total >= 300 }

puts "Big Orders"
puts big_orders
puts "Small Orders"
puts small_orders

orders.any? {|o| o.status = :pending }

