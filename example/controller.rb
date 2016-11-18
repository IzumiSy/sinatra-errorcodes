require_relative './base'

class MainController < BaseController
  get '/badrequest' do
    raise HTTPError::BadRequest
  end

  get '/error' do
    raise HTTPError::InternalServerError
  end

  get '/custom' do
    raise HTTPError::InternalServerError, "Custom error message"
  end

  get '/general_error' do
    undefined_method
  end
end
