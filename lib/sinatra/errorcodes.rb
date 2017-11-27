require 'sinatra/base'
require 'sinatra/errorcodes/version'

require_relative '../4xx_errors.rb'
require_relative '../5xx_errors.rb'
require_relative '../error_base.rb'

module Sinatra
  include HTTPError

  module Errorcodes
    def self.registered(app)
      app.set :halt_with_errors, false
      app.error do |e|
        return unless settings.halt_with_errors
        halt e.code, e.msg
      end
    end
  end
end
