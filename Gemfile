source 'https://rubygems.org'

gem 'rails', '3.2.11'
gem 'pg'
gem 'jquery-rails'
gem 'capistrano'
gem "twitter-bootstrap-rails"
gem 'therubyracer', :platforms => :ruby
gem 'less-rails'
gem 'httparty'

# Gems used only for assets and not required
# in production environments by default.
group :assets do
  gem 'sass-rails',   '~> 3.2.3'
  gem 'coffee-rails', '~> 3.2.1'
  gem 'uglifier', '>= 1.0.3'
end

group :development, :test do
  gem 'rspec-rails'
  gem 'factory_girl_rails'
  gem 'autotest-rails'
  gem 'ZenTest', '4.8.3'
  gem 'shoulda-matchers'
end

group :development do
  gem "capistrano-db-tasks", github: 'artfuldodger/capistrano-db-tasks'
end
