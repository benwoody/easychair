# Example User test
require "#{File.dirname(__FILE__)}/spec_helper"

describe 'User' do
  include Rack::Test::Methods

  def app
    Sinatra::Application.new
  end

  describe "GET on /" do

  	it "should return 200" do
  		get '/'
  		last_response.should be_ok
  	end

  end

end
