require 'spec_helper'

describe Sinatra::Errorcodes do
  it 'has a version number' do
    expect(Sinatra::Errorcodes::VERSION).not_to be nil
  end

  it 'returns 500' do
    get '/error'
    expect(last_response.status).to be 500
    expect(last_response.body).to eq 'Internal Server Error'
  end

  it 'returns 401' do
    get '/badrequest'
    expect(last_response.status).to be 400
    expect(last_response.body).to eq 'Bad Request'
  end
end
