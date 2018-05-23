task :cop do
  system 'bundle exec rubocop'
end

def runTest(s)
  puts "Running test #{s}."
  system "bundle exec ruby -I lib test/test_#{s}.rb"
  puts 'Done.'
end

task :test_get_validators do
  runTest 'get_validators'
end

task :default => %[test_get_validators] do
  puts 'All tests done.'
end
