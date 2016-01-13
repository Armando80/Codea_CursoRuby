class Vehicle

  attr_accessor :color, :numbers_of_wheels, :age

  def initialize
    @color = "black"
    @age = age
  end

  

  def age!
  end

  def number_of_wheels
  end

end


class Motorized < Vehicle
  attr_accessor :has_motor, :tank_size, :refuel, :number_of_gears

  def initialize(has_motor)
    @has_motor = has_motor
    @tank_size
    @number_of_gears = number_of_gears
  end

  def has_motor
  end

  def tank_size
  end

  def refuel
  end

  def number_of_gear
  end

end

class Motorbike < Motorized

  def initialize

    super(has_motor)
    super(number_of_gears)
    @tank_size = "20L"

  end

end

class Car < Motorized

  def initialize
     super(has_motor)
     super(tank_size)
    @number_of_wheels
  end


end

class Bicycle < Vehicle
end

class Skateboard < Vehicle
end

moto = Motorbike.new
car = Car.new
bike = Bicycle.new#(8)
skateboard = Skateboard.new

vehicles = [moto, car, bike, skateboard]


vehicles.each do |vehicle|
  vehicle.age!
  puts "#{vehicle.class} responds to:"
  puts "\tNumber of wheels: #{vehicle.respond_to?(:number_of_wheels) == true}"
  puts "\tColor: #{vehicle.respond_to?(:color) == true}"
  puts "\tAge!: #{vehicle.respond_to?(:age!) == true}"
  puts "\tHas motor: #{vehicle.respond_to?(:has_motor) == true}"
  puts "\tTank size: #{vehicle.respond_to?(:tank_size) == true}"
  puts "\tRefuel: #{vehicle.respond_to?(:refuel) == true}"
  puts "\tNumber of gears: #{vehicle.respond_to?(:number_of_gears) == true}"
  puts "\tAge: #{vehicle.age}"
  puts "\n\n"
end