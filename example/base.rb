class BaseController < Sinatra::Base
  configure do
    register Sinatra::Errorcodes

    set :raise_errors, false
    set :show_exceptions, false
    set :halt_with_errors, true
  end
end
