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

task :test_bad_validator do
  run_test 'bad_validator'
end

task :test_bad_xml do
  run_test 'bad_xml'
end

task :test_validate do
  run_test 'validate'
end

task :test_validate_empty do
  run_test 'validate_empty'
end

task :test_validate_sanity do
  run_test 'validate_sanity'
end

task default: %i[test_get_validators test_bad_validator
                 test_bad_xml test_validate test_validate_empty
                 test_validate_sanity] do
  puts 'All tests done.'
end
