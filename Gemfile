source 'https://rubygems.org'
#ruby-gemset=watchbug_api
ruby '2.2.2'

gem 'rails', '4.2.2'
gem 'rails-api'
gem 'pg'
gem 'puma'
gem 'faraday'

group :test do
  gem 'cucumber-rails', require:false
  gem 'rack-test'
  gem 'rspec-rails'
end
group :development,:test do
  gem 'spring'
  gem 'sqlite3'
  gem 'database_cleaner'
  gem 'httparty'
  gem 'webmock'
end



# To use ActiveModel has_secure_password
# gem 'bcrypt', '~> 3.1.7'

# To use Jbuilder templates for JSON
# gem 'jbuilder'

# Use unicorn as the app server
# gem 'unicorn'

# Deploy with Capistrano
# gem 'capistrano', :group => :development

# To use debugger
# gem 'ruby-debug19', :require => 'ruby-debug'
