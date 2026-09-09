# 1. Base Parent Class (Superclass)
class User
  attr_reader :name, :email

  def initialize(name, email)
    @name = name
    @email = email
  end

  def role_description
    "Standard system user with basic access."
  end
end

# 2. Child Class (Subclass) inheriting from User
class AdminUser < User
  attr_reader :admin_level

  # Extending initialize using 'super'
  def initialize(name, email, admin_level = 1)
    super(name, email) # Forwards name and email to User's initialize method
    @admin_level = admin_level
  end

  # Overriding method from parent class
  def role_description
    "Administrator (Level #{@admin_level}) with full system permissions."
  end

  # Child-specific new method
  def delete_user(target_user)
    "Admin #{@name} deleted user: #{target_user}"
  end
end

# Usage:
basic_user = User.new("Alice", "alice@example.com")
admin = AdminUser.new("Bob", "bob@example.com", 3)

puts basic_user.role_description # => Standard system user with basic access.
puts admin.role_description      # => Administrator (Level 3) with full system permissions.
puts admin.delete_user("Charlie")# => Admin Bob deleted user: Charlie

# Checking Superclasses
puts AdminUser.superclass        # => User
puts User.superclass             # => Object