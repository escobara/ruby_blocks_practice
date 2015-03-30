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

platinum, other = flyers.partition { |e| e.status == :platinum  }

puts "Platinum Flyers:"
puts platinum

puts "Other Flyers:"
puts other

name_tags = flyers.map {|e| "#{e.name.capitalize} (#{e.status.upcase})"}

puts name_tags

total_in_km = flyers.map {|f| f.miles_flown * 1.6 }
puts total_in_km
grand_total_mis = flyers.reduce(0) {|sum, f| sum += f.miles_flown  }
puts grand_total_mis
grand_total_kms = flyers.reduce(0) {|sum, f| sum += f.miles_flown * 1.6 }
puts grand_total_kms

bronze = flyers.select {|f| f.status == :bronze }.reduce(0) {|sum, f| sum += f.miles_flown }
puts bronze

top_flyer = flyers.max_by { |f| f.miles_flown }
puts top_flyer

