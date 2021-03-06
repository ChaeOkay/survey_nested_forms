# This file is copied to spec/ when you run 'rails generate rspec:install'
ENV["RAILS_ENV"] ||= 'test'
require File.expand_path("../../config/environment", __FILE__)
require 'rspec/rails'
require 'rspec/autorun'

# Requires supporting ruby files with custom matchers and macros, etc,
# in spec/support/ and its subdirectories.
Dir[Rails.root.join("spec/support/**/*.rb")].each { |f| require f }

RSpec.configure do |config|

  config.include Capybara::DSL
  # config.mock_with :rspec
  # config.include FactoryGirl::Syntax::Methods

  config.use_transactional_fixtures = false
  # true rolls back but doesn't work with capybara
  # capybara runs on diff thread

  config.before(:suite) do
    DatabaseCleaner.strategy = :truncation
    # later on maybe
  end

  config.before(:each) do
    DatabaseCleaner.start
  end

  config.after(:each) do
    DatabaseCleaner.clean
  end


  config.fixture_path = "#{::Rails.root}/spec/fixtures"
  config.infer_base_class_for_anonymous_controllers = false
  config.order = "random"
end
