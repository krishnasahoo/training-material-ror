class BankAccount
  attr_reader :owner, :balance

  def initialize(owner, balance)
    @owner = owner
    @balance = balance
  end

  def deposit(amount)
    @balance += amount
  end
end

account = BankAccount.new("Charlie", 100)
account.deposit(50)

puts "Owner: #{account.owner}"   # => Owner: Charlie
puts "Balance: $#{account.balance}" # => Balance: $150