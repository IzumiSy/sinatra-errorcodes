class MainController < Sinatra::Base
  get '/badrequest' do
    HTTPError::BadRequest.new()
  end

  get '/error' do
    HTTPError::InternalServerError.new()
  end
end
