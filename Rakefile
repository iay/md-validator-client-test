task :cop do
  system 'bundle exec rubocop'
end

def run_test(test_name)
  puts "Running test #{test_name}."
  system "bundle exec ruby -I lib test/test_#{test_name}.rb"
  puts 'Done.'
end

task :test_get_validators do
  run_test 'get_validators'
end

task default: %(test_get_validators) do
  puts 'All tests done.'
end
