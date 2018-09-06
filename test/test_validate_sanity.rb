require 'new_api'
require 'pp'

metadata = IO.read 'test/test_validate.xml'

# Sub-test: wrong element name
begin
  md = metadata.gsub(/EntityDescriptor/, 'ED')
  new_api.validate('test', md)
  puts 'expected an exception, didn\'t get one'
rescue ValidatorClient::ApiError => e
  if e.code == 400
    puts 'found the expected exception'
    pp JSON.parse e.response_body
  else
    puts "got the wrong exception: #{e.code}"
  end
end

# Sub-test: no entityID
begin
  md = metadata.gsub(/entityID=".*"/, '')
  new_api.validate('test', md)
  puts 'expected an exception, didn\'t get one'
rescue ValidatorClient::ApiError => e
  if e.code == 400
    puts 'found the expected exception'
    pp JSON.parse e.response_body
  else
    puts "got the wrong exception: #{e.code}"
  end
end
