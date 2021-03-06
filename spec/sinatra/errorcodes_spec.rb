require 'spec_helper'

describe Sinatra::Errorcodes do
  it 'has a version number' do
    expect(Sinatra::Errorcodes::VERSION).not_to be nil
  end

  it 'provides status 500' do
    expect(HTTPError::InternalServerError::CODE).to be 500
  end

  it 'provides status 400' do
    expect(HTTPError::BadRequest::CODE).to be 400
  end

  it 'returns status 500 ' do
    get '/error'
    expect(last_response.status).to be 500
    expect(last_response.body).to eq 'Internal Server Error'
  end

  it 'returns status 400' do
    get '/badrequest'
    expect(last_response.status).to be 400
    expect(last_response.body).to eq 'Bad Request'
  end

  it 'returns status 500 with a custom error message' do
    get '/custom'
    expect(last_response.status).to be 500
    expect(last_response.body).to eq 'Custom error message'
  end

  it 'returns status 500 without a message of HTTPError::InternalServerError' do
    get '/general_error'
    expect(last_response.status).to be 500
    expect(last_response.body).not_to eq 'Internal Server Error'
  end
end
