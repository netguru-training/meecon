require 'database_cleaner'

RSpec.configure do |config|
  config.before(:suite) do
    DatabaseCleaner.clean_with(:truncation)
    # Seed dataase. Use it only for essential
    # to run application data.
    # load "#{Rails.root}/db/seeds.rb"
  end

  config.around(:each) do |example|
    # Use really fast transaction strategy for all
    # examples except `js: true` capybara specs
    DatabaseCleaner.strategy = example.metadata[:js] ? :truncation : :transaction

    # Start transaction
    DatabaseCleaner.start

    # Run example
    example.run

    # Rollback transaction
    DatabaseCleaner.clean
  end
end
