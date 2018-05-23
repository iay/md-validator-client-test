require 'inc-validator-client'

ValidatorClient.configure do |config|
  config.host = 'localhost:8080'
end

def getApi()
  ValidatorClient::ValidationApi.new
end
