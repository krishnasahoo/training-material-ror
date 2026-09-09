#frozen_string_literal: true
# 1. Local Variables and Data Types
age = 24                     # Integer
price = 19.99                # Float
framework_name = "Rails"     # String
is_active = true             # Boolean
empty_slot = nil             # NilClass

# 2. String Interpolation (Requires double quotes "")
puts "Welcome to #{framework_name}! Your age is #{age}."

# 3. String vs Symbol Memory Demonstration
# Notice how strings create different object IDs, but identical symbols share the exact same object ID!
puts "hello".object_id       # Output example: 70123
puts "hello".object_id       # Output example: 70456 (New object in memory)

puts :status.object_id       # Output example: 1089228
puts :status.object_id       # Output example: 1089228 (Identical memory address)

# 4. Constants
MAX_USERS = 100
# MAX_USERS = 200 # Ruby will raise a warning if you try to redefine a constant
puts MAX_USERS