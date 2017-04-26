require 'sinatra/base'
require 'sinatra/errorcodes/version'

require_relative '../4xx_errors.rb'
require_relative '../5xx_errors.rb'
require_relative '../error_base.rb'

module Sinatra
  include HTTPError

  module Errorcodes
    def handle_errorcode(e)
      if e.is_a? ErrorBase
        halt e.code, Rack::Utils::HTTP_STATUS_CODES[e.code]
      end
    end
  end

  helpers Errorcodes
end
