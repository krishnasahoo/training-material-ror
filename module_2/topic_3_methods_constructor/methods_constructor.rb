class SmartDevice
  attr_reader :brand, :battery_level

  # Constructor Method
  def initialize(brand, battery_level = 100)
    @brand = brand
    @battery_level = battery_level
    verify_battery_safety # Calls private helper upon creation
  end

  # Public Method
  def use_device(hours)
    drain_amount = hours * 15
    @battery_level = [@battery_level - drain_amount, 0].max
    "Used #{@brand} for #{hours}h. Remaining battery: #{@battery_level}%"
  end

  # Public Method using self
  def summary
    "Device Brand: #{self.brand} | Battery: #{self.battery_level}%"
  end

  private

  # Private Helper Method (Encapsulated internal logic)
  def verify_battery_safety
    if @battery_level > 100
      @battery_level = 100
      puts "Warning: Battery capped at 100% maximum capacity!"
    end
  end
end

# 1. Instantiation triggers initialize automatically
phone = SmartDevice.new("Pixel", 120) # Triggers safety warning!

# 2. Call public methods
puts phone.use_device(3)  # => Used Pixel for 3h. Remaining battery: 55%
puts phone.summary         # => Device Brand: Pixel | Battery: 55%

# 3. Attempting to call private method directly raises an error:
# phone.verify_battery_safety # => NoMethodError (private method called)