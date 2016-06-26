require 'sinatra/base'
require 'sinatra/extension'
require 'sinatra/errorcodes/version'

require_relative '../4xx_errors.rb'
require_relative '../5xx_errors.rb'

module Sinatra
  module Errorcodes
    module Helpers
      include HTTPError
    end

    def self.registered(app)
      app.helpers Errorcodes::Helpers
    end
  end

  register Errorcodes
end
