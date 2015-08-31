require 'cucumber/rails'
require 'rack/test'
include Rack::Test::Methods
ActionController::Base.allow_rescue = false
DatabaseCleaner.strategy = :transaction
DatabaseCleaner.clean_with(:deletion)