require 'get_api'

begin
  # lists available validators
  result = getApi().get_validators
  puts "Validators detected: #{result.length}"
  result.each do |val|
    puts "   #{val.validator_id}: #{val.description}"
  end
rescue ValidatorClient::ApiError => e
  puts "Exception when calling ValidationApi->get_validators: #{e}"
end
