require 'rubygems'
require 'couchrest'
require 'couchrest_model'
require 'ostruct'

require 'sinatra' unless defined?(Sinatra)

$version = 'x.x.x'

configure do
  SiteConfig = OpenStruct.new(
                 :url_base => 'http://localhost:4567/',
                 :url_base_db => 'http://localhost:5984/',
                 :db_name => "staging_database"
               )

  # load models
  $LOAD_PATH.unshift("#{File.dirname(__FILE__)}/models")
  Dir.glob("#{File.dirname(__FILE__)}/models/*.rb") { |model| require File.basename(model, '.*') }

end
