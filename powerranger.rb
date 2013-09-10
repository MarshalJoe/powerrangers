
module Fight
	def punch(person)
		person.get_hit(@strength)
		@caffeine -= 1
	end

end


class Person
	attr_accessor :name, :caffeine

	def initialize(name, caffeine)
	@name = name
	@caffeine = caffeine
	end

	def get_hit(strength)
		if strength > 5
			puts "#{@name} runs away, terrified! " * 2
		else
			puts "#{@name} runs away, terrified!"
		end
		@caffeine -= 1
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

class PowerRanger < Person
	attr_accessor :strength

	include Fight
	
	def initialize(name, caffeine)
		super
		@strength = 4
		@color = nil
	end

#	def punch(person)
#		person.get_hit(@strength)
#		@caffeine -= 1
#	end

	def use_megazord(person)
		person.get_hit(5000)
		@caffeine -= 1
	end

	def rest
	end

end

class EvilNinja < Person
	
	include Fight

	def initialize(name, caffeine)
		super
		@strength = 6
		@evilness = 10
	end

#	def punch(person)
#		person.get_hit(@strength)
#		@caffeine -= 1
#	end

	def cause_mayhem(person)
		person.caffeine = 0
	end	

end

me = Person.new("Joe", 17)
you = Person.new("Taylor", 14)

evilninja1 = EvilNinja.new("Tweedledee", 15)
evilninja2 = EvilNinja.new("Tweedledum", 16)

becky = PowerRanger.new("Becky", 13)
will = PowerRanger.new("William", 12)

me.run(10)
you.drink_coffee
puts you.caffeine
evilninja1.punch(becky)
evilninja1.cause_mayhem(me)
puts me.caffeine
becky.use_megazord(evilninja2)

#me = Person.new("Joe", 10)
#uper_me = PowerRanger.new("Super Joe", 15)
#evil_me = EvilNinja.new("Evil Me", 20)


#puts "getting punched"
#super_me.punch(me)
#puts "getting megazorded"
#super_me.use_megazord(me)
#puts "getting punched by an evil ninja"
#evil_me.punch(me)
#puts "getting my caffeine drained by an evil ninja"
#evil_me.cause_mayhem(me)
#puts "taking my caffeine level from 10 to... #{me.caffeine}"




