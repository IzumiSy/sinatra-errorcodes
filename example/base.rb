class BaseController < Sinatra::Base
  configure do
    register Sinatra::Errorcodes

    handle_errorstatus

    set :raise_errors, false
    set :show_exceptions, false
  end
end
