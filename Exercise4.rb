class Dog

	attr_accessor :name
	def initialize(hash)
		@name = hash[:nombre]
		@race = hash[:raza]
		@color = hash[:color] 	
	end

	def ladrar
		puts "#{@name} esta ladrando!!!"
	end
end

prop = {nombre: 'Beethoven', raza: 'San Bernardo', color: 'Café'}
dog1= Dog.new(prop)
dog1.ladrar
