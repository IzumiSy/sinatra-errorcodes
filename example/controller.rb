require_relative './base'

class MainController < BaseController
  get '/badrequest' do
    raise HTTPError::BadRequest
  end

  get '/error' do
    raise HTTPError::InternalServerError
  end
end
