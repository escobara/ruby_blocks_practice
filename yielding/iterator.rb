
def three_times 
	1.upto(3) do |n|
		yield(n)
	end
end

three_times { puts "Ho!" }

three_times do |number|
	puts "#{number} situp"
  puts "#{number} pushup"
  puts "#{number} chinup"
end

def deal
  faces = ["Jack", "Queen", "King", "Ace"]
  suits = ["Hearts", "Diamonds", "Spades", "Clubs"]
  random_face = faces.sample
  random_suit = suits.sample
  if block_given? 
  	score = yield random_face, random_suit 
		puts "You Scored a #{score}"
	else
		puts "No deal!"
	end
end

# deal { |face, suit| puts "Dealt a #{face} of #{suit}"}
# deal { |face, suit| puts "You Scored a #{face.size + suit.size}"}

deal do |face, suit|
	puts "Dealt a #{face} of #{suit}"
	face.length + suit.length
end

deal

def temperature
  yield("Monday", 75)
  yield 55, "Friday"
end

temperature do |day, temp|
  puts "The day is #{day} and the temperature is #{temp}."
end



def temperature
  puts "Taking temperature:"
  result = yield("Thursday", 323)
  puts "For our Canadian friends, the temperature in Celsius is #{result}"
end

temperature do |day, temp|
  puts "The day is #{day} and the temperature is #{temp}."
  (temp - 32) * 5 / 9
end

def greet
  yield "Larry", 18
end

greet { |name, age| puts "Hello, #{name}. You don't look #{age}!" }

def n_times(n) 
	1.upto(n) do |count|
		yield(count)
	end
end


n_times(5) do |n|
  puts "#{n} situps"
  puts "#{n} pushups"
  puts "#{n} chinups"
end

def progress
	0.step(100, 10) do |number|
		yield(number)
	end
end

progress { |percent| puts percent }


