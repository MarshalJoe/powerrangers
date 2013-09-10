class Person

	def initialize(name, caffeine)
	@name = name
	@caffeine = caffeine
	end

	def run(miles)
		puts "You ran #{miles} miles!"
	end

	def scream(words)
		puts "#{words.upcase}!"  
	end

	def drink_coffee
		@caffeine += 1
	end

end

class PowerRanger
end

class EvilNinja
end
