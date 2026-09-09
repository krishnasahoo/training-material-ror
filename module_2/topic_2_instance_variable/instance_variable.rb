class User
  # Automatically creates getter and setter methods for @name and @role
  attr_accessor :name, :role

  def initialize(name, role = "Member")
    @name = name   # Assigns instance variable
    @role = role   # Assigns instance variable
  end

  # Instance variables are accessible across ALL methods in this class
  def display_profile
    "User: #{@name} | Role: #{@role}"
  end
end

# 1. Instantiate two distinct objects
user1 = User.new("Alice", "Admin")
user2 = User.new("Bob")

# 2. Access state private to each object
puts user1.display_profile # => User: Alice | Role: Admin
puts user2.display_profile # => User: Bob | Role: Member

# 3. Reading and Writing via attr_accessor
user2.name = "Robert"      # Invokes the setter method (name=)
puts user2.name            # Invokes the getter method (name) -> "Robert"

# 4. Uninitialized instance variables evaluate to nil
class Demo
  def check_nil
    @unassigned_var.inspect
  end
end

puts Demo.new.check_nil    # => "nil"