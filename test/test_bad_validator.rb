require 'new_api'

begin
  new_api.validate('bad_name', '<x/>')
  puts 'expected an exception, didn\'t get one'
rescue ValidatorClient::ApiError => e
  if e.code == 404
    puts 'found the expected exception'
  else
    puts "got the wrong exception: #{e.code}"
  end
end
