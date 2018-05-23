require 'new_api'
require 'pp'

begin
  new_api.validate('test', 'invalid XML')
  puts 'expected an exception, didn\'t get one'
rescue ValidatorClient::ApiError => e
  if e.code == 400
    puts 'found the expected exception'
    pp JSON.parse e.response_body
  else
    puts "got the wrong exception: #{e.code}"
  end
end
