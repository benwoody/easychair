require 'rubygems'
require 'sinatra/base'
require 'sinatra'
require './environment'

error do
  e = request.env['sinatra.error']
  Kernel.puts e.backtrace.join("\n")
  'Application error'
end

configure do
  set :views, "#{File.dirname(__FILE__)}/views"
end

before do
	# content_type :json
end

# enable :sessions

get '/' do
  haml :layout
end

# 404
not_found do
  "404: Not Found".to_json
end

# 500
error do
  "500: Y U NO WORK?".to_json
end

# Rest of application goes below
