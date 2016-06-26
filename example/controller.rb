require_relative './base'

class MainController < BaseController
  get '/badrequest' do
    HTTPError::BadRequest.new()
  end

  get '/error' do
    HTTPError::InternalServerError.new()
  end
end
