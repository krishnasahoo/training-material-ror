class Car
  attr_reader :make, :model, :fuel_level

  def initialize(make, model, fuel_level = 100)
    @make = make
    @model = model
    @fuel_level = fuel_level
  end

  def drive(miles)
    fuel_used = miles / 5
    @fuel_level = [@fuel_level - fuel_used, 0].max
    
    puts "Drove #{miles} miles. Fuel remaining: #{@fuel_level}%"
    puts "WARNING: Low fuel! Please refuel soon." if low_fuel?
  end

  private

  def low_fuel?
    @fuel_level < 15
  end
end

my_car = Car.new("Toyota", "Corolla", 30)
my_car.drive(100) # Reduces fuel by 20 -> remaining fuel is 10% (triggers low fuel warning)