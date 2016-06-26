$LOAD_PATH.unshift File.expand_path('../../lib', __FILE__)

require 'rspec'
require 'rack/test'
require 'sinatra/errorcodes'

require_relative '../example/app.rb'

RSpec.configure do |config|
  include Rack::Test::Methods

  def app()
    Application.new
  end
end
