class Car
  def initialize(sound)
    @sounds = sound
  end
  
  def make_noise
    puts @sounds
  end
end



sounds = ["Brrooom", "Beep", "Honk"]


cars = sounds.map do |sound| 
  Car.new(sound)
end

cars.each do |car|
  car.make_noise
end



###########################################

class Car
  def initialize(sound)
    @sound = sound
  end
  
  def make_noise
    puts @sound
  end 
end


ford = Car.new("Beep")
pinto = Car.new("Honk")
maxima = Car.new("Brooom")

cars = [ford, pinto, maxima]

cars.each do |car| 
  puts car.make_noise
end


###################################
class Person
  attr_reader :name
  attr_accessor :age
  
  def initialize(name, age)
    @name = name
    @age = age
  end
  
  def name
    puts @name
  end
  
  def age
    puts @age
  end
end

person = Person.new("John", 35)
person.name
person.age


###################################

class Car
  def initialize(noise)
    @noise = noise
  end
  
  def make_noise
    puts @noise
  end
end

class RacingCar < Car
  def initialize
  end
  
  def make_noise
    puts "Brrooom"
  end
end

car = Car.new("honk")
car2 = Car.new("beep")
car.make_noise
car2.make_noise
puts @noise 

racing = RacingCar.new
racing.make_noise



########################################
class Car
  def initialize
    @cities_visited = []
  end
  
  def visit(city)
     @city = city
     @cities_visited.push(city)
     IO.write("cities.txt", @cities_visited)
  end  
  
  def cities
    puts @cities_visited.inspect  
  end
end

car = Car.new
car.visit("Columbus")
car.visit("Madrid")
car.cities


########################################
class Car
  def initialize(sound)
    @sound = sound
  end
  
  def make_noise
    puts @sound
  end
  
  def self.double_noise(car)
    @car = car
    car.make_noise
    car.make_noise
  end
end

car = Car.new("Beep")
car2 = Car.new("Honk")
Car.double_noise(car)
Car.double_noise(car2)

##########################################

 class Car
  def initialize(noise)
    @noise = noise
  end
  
  def make_noise
    puts @noise
  end
end

car = Car.new("honk")
car2 = Car.new("beep")
car.make_noise
car2.make_noise
puts @noise 
