require 'spec_helper'

describe Sinatra::Errorcodes do
  it 'has a version number' do
    expect(Sinatra::Errorcodes::VERSION).not_to be nil
  end

  it 'provides status 500' do
    expect(HTTPError::InternalServerError::CODE).to be 500
    expect(HTTPError::InternalServerError::MESSAGE).to eq 'Internal Server Error'
  end

  it 'provides status 400' do
    expect(HTTPError::BadRequest::CODE).to be 400
    expect(HTTPError::BadRequest::MESSAGE).to eq 'Bad Request'
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
end
