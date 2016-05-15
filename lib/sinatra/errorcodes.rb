require 'sinatra/base'
require 'sinatra/errorcodes/version'

require_relative '../4xx_errors.rb'
require_relative '../5xx_errors.rb'

module Sinatra
  include HTTPError

  module Errorcodes
    def self.registered(app)
      # TODO: Here overrides error do ... end section
      # in order to set up exception handlings.
    end
  end
end
