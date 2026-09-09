sudo apt update
sudo apt install -y rbenv ruby-build






# List available Ruby versions
rbenv install -l | grep -E "^3\.[0-9]+\.[0-9]+$" | tail -n 5

# Install stable Ruby version
rbenv install 3.3.0

# Set this version globally for the user machine
rbenv global 3.3.0

# Verify the installed version
ruby -v
# Output should show: ruby 3.3.0 ...