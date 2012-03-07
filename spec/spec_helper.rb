# Uncomment require 'spork' in order to use it.
# The below code also has spork --bootstrap run against it

require 'rspec'
#require 'spork'
require 'sinatra/base'
require 'rack/test'


# Spork.prefork do
  # Loading more in this block will cause your tests to run faster. However,
  # if you change any configuration or code from libraries loaded here, you'll
  # need to restart spork for it take effect.

# end

# Spork.each_run do
#   # This code will be run each time you run your specs.

#   # Set test env
#   Sinatra::Base.set :environment, :test
# 	Sinatra::Base.set :run, false
# 	Sinatra::Base.set :raise_errors, true
# 	Sinatra::Base.set :logging, false

# 	require File.join(File.dirname(__FILE__), '../application')
# end

# --- Instructions ---
# - Sort through your spec_helper file. Place as much environment loading
#   code that you don't normally modify during development in the
#   Spork.prefork block.
# - Place the rest under Spork.each_run block
# - Any code that is left outside of the blocks will be ran during preforking
#   and during each_run!
# - These instructions should self-destruct in 10 seconds.  If they don't,
#   feel free to delete them.



