class BaseController < Sinatra::Base
  configure do
    set :raise_errors, false
    set :show_exceptions, false
  end

  error do |e|
    body e.message
    status e.code
  end
end
