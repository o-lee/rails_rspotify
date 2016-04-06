ruby '2.2.3'
source 'http://rubygems.org'
gem 'rails', '4.2.4'
gem 'rspotify'

group :development, :test do
  gem 'sqlite3'
  gem 'byebug'
  gem 'database_cleaner'
  gem 'capybara'
  gem 'launchy'
  gem 'rspec-rails'
  gem 'rspec-activemodel-mocks'
  gem 'rspec-collection_matchers'
  gem 'thin'
  gem 'guard'
  gem 'guard-cucumber'
end

group :test do
  gem 'cucumber-rails',                  :require => false
  gem 'cucumber-rails-training-wheels'
  gem 'selenium-webdriver'
  #gem "capybara-webkit"
end

group :production do
  gem 'pg'
  # Use unicorn as the web server removes lots of potential heroku issues.
  gem 'unicorn'
  gem 'rails_12factor'
end

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'therubyracer', '~> 0.12.0'
  gem 'sass-rails'
  gem 'coffee-rails'
  gem 'uglifier'
end

gem 'jquery-rails'
gem 'haml'
gem 'pg'

# Deploy with Capistrano
# gem 'capistrano'
