# frozen_string_literal: true

ENV['APP_ENV'] = 'test'

require 'rspec'
require 'rack/test'

RSpec.configure { |cfg| cfg.include Rack::Test::Methods }
