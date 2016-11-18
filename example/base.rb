class BaseController < Sinatra::Base
  configure do
    helpers Sinatra::Errorcodes

    set :raise_errors, false
    set :show_exceptions, false
  end

  error do |e|
    handle_errorcode(e)
  end
end
