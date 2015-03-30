class Flyer
  attr_reader :name, :email, :miles_flown
  attr_accessor :status

  def initialize(name, email, miles_flown, status=:bronze)
    @name = name
    @email = email
    @miles_flown = miles_flown
    @status = status
  end

  def to_s
    "#{name} (#{email}): #{miles_flown} - #{status}"
  end
end

flyers = []
flyers << Flyer.new("Larry", "larry@example.com", 4000, :platinum)
flyers << Flyer.new("Moe", "moe@example.com", 1000)
flyers << Flyer.new("Curly", "curly@example.com", 3000, :gold)
flyers << Flyer.new("Shemp", "shemp@example.com", 2000)

puts "Frequent Flyers"
ff = flyers.select {|f| f.miles_flown <= 3000 }
puts ff
puts "Need Momentum"
notff = flyers.reject {|f| f.miles_flown <= 3000 }
puts notff
p "Has any reached platinum status?" 
puts flyers.any? {|f| f.status = :platinum }
p "Which bronze member should we call first"
puts flyers.detect {|f| f.status = :bronze }