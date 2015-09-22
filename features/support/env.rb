require 'cucumber/rails'
require 'rack/test'
require 'webmock/cucumber'
include Rack::Test::Methods
ActionController::Base.allow_rescue = false
DatabaseCleaner.strategy = :transaction
DatabaseCleaner.clean_with(:deletion)