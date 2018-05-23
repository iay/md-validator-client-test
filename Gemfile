# frozen_string_literal: true

source 'https://rubygems.org'

group :devel do # required for development
  gem 'rubocop'
end

gem 'inc-validator-client', path: '../inc-validator-client-ruby'

#
# Pin the 'ffi' gem at version 1.9.21 to prevent segfaults on
# macOS 10.13 High Sierra.
#
# Underlying issue: https://github.com/ffi/ffi/issues/619
#
# This gem is an indirect dependency via
#  esi-client-bvv --> typhoeus --> ethon --> ffi
# but ethon requires only >= 1.3.0.
#
gem 'ffi', '1.9.21'
