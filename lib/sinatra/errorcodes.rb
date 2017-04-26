require 'sinatra/base'
require 'sinatra/errorcodes/version'

require_relative '../4xx_errors.rb'
require_relative '../5xx_errors.rb'
require_relative '../error_base.rb'

module Sinatra
  include HTTPError

  module Errorcodes
    def handle_errorstatus
      error do |e|
        if e.is_a? ErrorBase
          halt e.code, e.msg
        end
      end
    end
  end

  register Errorcodes
end
