cards = ["Jack", "Queen", "King", "Ace", "Joker"]

cards.reverse_each do |card|
	puts "#{card.upcase} - #{card.size}"
end

scores = {"Larry" => 10, "Moe" => 8, "Curley" => 12}
scores.each do |k, v|
	puts "#{k} scored a #{v}!"
end