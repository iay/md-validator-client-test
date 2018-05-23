require 'new_api'
require 'pp'

metadata = IO.read 'test/test_validate.xml'

begin
  results = new_api.validate('test', metadata)
  puts "Validation results: #{results.length}"
  results.each do |result|
    pp result
  end
rescue ValidatorClient::ApiError => e
  puts "Exception when calling ValidationApi->get_validators: #{e}"
end
