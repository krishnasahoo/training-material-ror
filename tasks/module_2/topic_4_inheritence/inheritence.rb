class Vehicle
  attr_reader :brand, :speed

  def initialize(brand, speed)
    @brand = brand
    @speed = speed
  end

  def drive
    "Driving at #{@speed} mph"
  end
endcd

class ElectricCar < Vehicle
  attr_reader :battery_capacity

  def initialize(brand, speed, battery_capacity)
    super(brand, speed)
    @battery_capacity = battery_capacity
  end

  def drive
    "#{super} (Zero emissions!)"
  end
end

tesla = ElectricCar.new("Tesla", 65, "75kWh")
puts tesla.drive # => "Driving at 65 mph (Zero emissions!)"