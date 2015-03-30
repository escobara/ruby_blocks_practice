scores = [83, 71, 92, 64, 98, 87, 75, 69]

scores_doubled = scores.map {|s| s * 2 }
p scores_doubled

puts "TRUE" if scores.reduce(&:+) >= 600

evens, odds = scores.partition {|s| s.even? }
