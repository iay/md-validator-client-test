require 'inc-validator-client'

ValidatorClient.configure do |config|
  config.host = 'localhost:8080'
end

def new_api
  ValidatorClient::ValidationApi.new
end
