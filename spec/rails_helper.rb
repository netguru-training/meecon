require 'codeclimate-test-reporter'
CodeClimate::TestReporter.start if ENV['CI']

ENV["RAILS_ENV"] ||= 'test'
require 'spec_helper'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'shoulda/matchers'
require 'database_cleaner'

ActiveRecord::Migration.maintain_test_schema!

RSpec.configure do |config|
  config.fixture_path = "#{::Rails.root}/spec/fixtures"

  config.use_transactional_fixtures = false


  config.infer_spec_type_from_file_location!

  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
  end

  config.around(:each) do |example|
    DatabaseCleaner.strategy = example.metadata[:js] ? :truncation : :transaction

    DatabaseCleaner.start

    example.run

    DatabaseCleaner.clean
  end
end
