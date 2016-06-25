require 'sinatra'
require 'sinatra/base'
require 'sinatra/errorcodes'

require_relative './controller.rb'

class Application < Sinatra::Base
  use MainController
end
