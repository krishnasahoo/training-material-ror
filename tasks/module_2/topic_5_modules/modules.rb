module Swappable
  def swap_status
    @active = !@active
    "Status is now: #{@active}"
  end
end

class UserAccount
  include Swappable
  attr_reader :active

  def initialize
    @active = false
  end
end

class Subscription
  include Swappable
  attr_reader :active

  def initialize
    @active = false
  end
end

user = UserAccount.new
sub = Subscription.new

puts user.swap_status # => Status is now: true
puts sub.swap_status  # => Status is now: true