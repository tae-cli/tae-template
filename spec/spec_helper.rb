# typed: strict
# frozen_string_literal: true

require 'bundler/setup'
require 'simplecov'

require 'tae'

SimpleCov.start do
  enable_coverage :branch
  command_name ENV['TEST_SUITE']
  minimum_coverage ENV['MINIMUM_COVERAGE'].to_i
end

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = '.rspec_status'

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end
