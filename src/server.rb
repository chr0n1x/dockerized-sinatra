# frozen_string_literal: true

require 'sinatra'

# modular sinatra server object
class Server < Sinatra::Base
  get '/' do
    { message: 'hello world!' }.to_json
  end
end
